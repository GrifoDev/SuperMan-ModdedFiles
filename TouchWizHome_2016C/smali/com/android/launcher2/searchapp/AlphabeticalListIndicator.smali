.class public Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;
.super Landroid/view/View;
.source "AlphabeticalListIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;,
        Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;,
        Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;,
        Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;
    }
.end annotation


# static fields
.field private static final GRP_SIZE:I = 0x3

.field public static final INDEX_CHANGED:I = 0x1

.field public static final INDEX_CHANGED_AND_PREMATCH:I = 0x2

.field public static final INDEX_INVALID:I = 0x5

.field public static final INDEX_NOT_PROCESSED:I = 0x4

.field public static final INDEX_NO_CHANGE:I = 0x3

.field private static final INVALID_WORKING_STR:I = -0x1

.field private static final PT_ABOVE_FIRST_CHAR:I = -0x2

.field private static final PT_BELOW_LAST_CHAR:I = -0x3


# instance fields
.field private indexStrArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowWiggle:Z

.field private mBgFullHeight:Z

.field private mCellSepLineMarginLeft:F

.field private mCellSepLineMarginRight:F

.field private mCellSepLinePaint:Landroid/graphics/Paint;

.field private mCellSepLineThick:F

.field private mCurrentIndex:I

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mFirstCharPreMatches:Z

.field private mIndexStr:Ljava/lang/String;

.field private mIsFloating:Z

.field private mNormalBg:Landroid/graphics/drawable/Drawable;

.field private mOverflowGrpCharMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;",
            ">;"
        }
    .end annotation
.end field

.field private mOverflowGrpSepChar:C

.field private mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

.field private mPressDelay:I

.field private mSelBg:Landroid/graphics/drawable/Drawable;

.field private mSelItemBg:Landroid/graphics/drawable/Drawable;

.field private mSelTextColor:I

.field private mTextColor:I

.field private mTextMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextUppercase:Z

.field private mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

.field private mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

.field private mUnpressDelay:I

.field private mWorkingStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIsFloating:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mPressDelay:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mUnpressDelay:I

    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    iput-boolean v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    iput-boolean v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextUppercase:Z

    iput-boolean v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mAllowWiggle:Z

    iput-boolean v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mBgFullHeight:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    new-instance v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineThick:F

    iput v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    iput v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIsFloating:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    iput v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    const/16 v4, 0xc8

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mPressDelay:I

    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mUnpressDelay:I

    const/16 v4, 0x2e

    iput-char v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    iput-boolean v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    iput-boolean v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextUppercase:Z

    iput-boolean v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mAllowWiggle:Z

    iput-boolean v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mBgFullHeight:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    new-instance v4, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    invoke-direct {v4, p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    new-instance v4, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    invoke-direct {v4, p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    iput-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineThick:F

    iput v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    iput v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListIndicator:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xc8

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mPressDelay:I

    const/16 v4, 0x3e8

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mUnpressDelay:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextUppercase:Z

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mBgFullHeight:Z

    const/16 v4, 0x13

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIsFloating:Z

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineThick:F

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextColor:I

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelTextColor:I

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    const/16 v5, 0x12

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    new-array v2, v8, [C

    iget-char v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    aput-char v4, v2, v7

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    array-length v5, v2

    iget-object v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v7, v5, v6}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addGroupRange(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    move v0, p3

    :goto_0
    if-gt v0, p4, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addOverflowGroupRange(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-char v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$1;)V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, p3, 0x1

    iput v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    add-int/lit8 v2, p4, -0x1

    iput v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method private compute(Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/PointF;",
            "Z)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0, v8}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCharsWouldFit(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "zh_HK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v8, v4

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    aget-object v9, v4, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    if-eqz p5, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    if-ge v2, v7, :cond_4

    :cond_3
    :goto_2
    return v6

    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v8, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    invoke-direct {p0, v8, p2, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->computeWorkingStr(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v1, v0, v8

    iget v8, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v1

    iput v8, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {p0, v8, v2, p3, p4}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, p3, p4, p2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/util/ArrayList;)I

    move-result v5

    if-eqz p5, :cond_5

    invoke-direct {p0, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isCellIndexValid(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-char v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v0

    iput v6, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v0

    iput v6, p3, Landroid/graphics/RectF;->bottom:F

    :cond_5
    move v6, v7

    goto :goto_2
.end method

.method private computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 13

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getHeight()I

    move-result v9

    int-to-float v5, v9

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v2

    int-to-float v9, p1

    mul-float v4, v9, v2

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v9, v10

    sub-float v1, v5, v6

    iget v9, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->right:F

    iget-boolean v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mBgFullHeight:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    iget v9, v7, Landroid/graphics/RectF;->top:F

    add-float v8, v9, v1

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_2

    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v9}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCharsWouldFit(F)I

    move-result v3

    if-gt p1, v3, :cond_3

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private computeWorkingStr(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, p3

    if-gt v4, v7, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    iget-boolean v11, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v11, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-ge v7, v5, :cond_3

    move v9, v10

    :cond_2
    :goto_1
    return v9

    :cond_3
    const/4 v8, 0x0

    iget-boolean v11, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v11, :cond_4

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    :cond_4
    int-to-float v10, v7

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    float-to-int v6, v10

    sub-int v10, v4, v8

    int-to-float v10, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-int v0, v10

    add-int/lit8 v2, v6, -0x2

    move v3, v8

    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v10, v0, -0x1

    add-int v1, v3, v10

    const/4 v10, 0x3

    if-ne v10, v0, :cond_5

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->addGroupRange(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    :goto_3
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->addOverflowGroupRange(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v4, -0x1

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->addOverflowGroupRange(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    goto :goto_1
.end method

.method private drawChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLjava/lang/String;FFFZ)V
    .locals 15

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineThick:F

    add-float/2addr v1, v3

    sub-float v6, p6, v1

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v14, v1, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-char v1, v2, v1

    iget-char v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v1, v13

    sub-float/2addr v6, v1

    :cond_1
    const/4 v3, 0x0

    array-length v4, v2

    iget-object v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    if-eqz p8, :cond_2

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    add-float v8, v1, v3

    iget v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineThick:F

    sub-float v9, p6, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v1, v1, p3

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    sub-float v10, v1, v3

    iget-object v12, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move/from16 v11, p6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextUppercase:Z

    if-eqz v1, :cond_1

    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v14, v1, :cond_1

    aget-char v1, v2, v14

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1
.end method

.method private getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/PointF;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v3

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v4

    div-float v4, v2, v4

    float-to-int v0, v4

    if-gez v0, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    if-lt v0, v1, :cond_0

    const/4 v0, -0x3

    goto :goto_0
.end method

.method private getCharsWouldFit(F)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v1

    div-float v2, v0, v1

    float-to-int v2, v2

    return v2
.end method

.method private isCellIndexValid(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryUpdateCellIndexForOverflowGrp(ILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 14

    iget-object v12, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-char v12, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    iget-object v12, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;

    if-eqz v7, :cond_1

    iget v12, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    iget v13, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    if-gt v12, v13, :cond_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    iget v12, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    iget v13, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    sub-int/2addr v12, v13

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v1

    int-to-float v12, v9

    div-float v6, v1, v12

    const/4 v12, 0x0

    cmpg-float v12, v6, v12

    if-gez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float v11, v12, v13

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/PointF;->y:F

    sub-float v10, v12, v11

    int-to-float v12, p1

    mul-float v2, v12, v1

    sub-float v5, v10, v2

    div-float v12, v5, v6

    float-to-int v4, v12

    iget v12, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    add-int v8, v12, v4

    iget v12, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    if-ne v8, v12, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    iput v8, v7, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    const/4 v12, 0x1

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/PointF;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mAllowWiggle:Z

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->compute(Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public Contains(Landroid/graphics/PointF;)Z
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public clearCurrentChar()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/searchapp/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v6

    invoke-direct {v3, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getWidth()I

    move-result v1

    int-to-float v4, v1

    new-instance v15, Landroid/graphics/PointF;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    add-float/2addr v2, v5

    sub-float v2, v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-direct {v15, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ltz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ge v1, v13, :cond_3

    iget v1, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float v16, v1, v2

    const/high16 v1, 0x40400000    # 3.0f

    div-float v11, v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v11

    sub-float v5, v16, v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getWidth()I

    move-result v6

    add-float v7, v16, v11

    float-to-int v7, v7

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    add-int/lit8 v14, v1, -0x1

    :cond_3
    :goto_1
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ne v12, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mSelTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    :goto_3
    if-ne v12, v14, :cond_4

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, v15, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float v7, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->drawChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLjava/lang/String;FFFZ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_4
.end method

.method public feedPt(Landroid/graphics/PointF;)I
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/util/ArrayList;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isCellIndexValid(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mBgFullHeight:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->clearCurrentChar()V

    const/4 v1, 0x5

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->tryUpdateCellIndexForOverflowGrp(ILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ne v0, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->invalidate()V

    iget v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getCellHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getCurrentString()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mWorkingStr:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget v3, v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    iget v4, v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    if-lt v3, v4, :cond_4

    iget v3, v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    iget v4, v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    if-le v3, v4, :cond_5

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->indexStrArray:Ljava/util/ArrayList;

    iget v3, v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getMidYForCurrentChar()F
    .locals 3

    iget v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCellHeight()F

    move-result v0

    iget v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public isFloating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIsFloating:Z

    return v0
.end method

.method public isPreMatching()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mCurrentIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextUppercase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mTextUppercase:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->updateBounds(Landroid/graphics/PointF;)Z

    :cond_0
    return-void
.end method

.method public pressDelayed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->abort()Z

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    iget v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mPressDelay:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;->postToQueue(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAllowWiggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mAllowWiggle:Z

    return-void
.end method

.method public setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->updateBounds(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public setPressedImmediate(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setPressed(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unPressDelayed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$PressRunnable;->abort()Z

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;

    iget v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->mUnpressDelay:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->postToQueue(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

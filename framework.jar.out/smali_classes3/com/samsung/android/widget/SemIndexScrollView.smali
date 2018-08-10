.class public Lcom/samsung/android/widget/SemIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "SemIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$1;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;,
        Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    }
.end annotation


# static fields
.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field private static final OUT_OF_BOUNDARY:F = -9999.0f

.field private static final TAG:Ljava/lang/String; = "SemIndexScrollView"

.field private static final TRANSPARENCY_VALUE:F = 0.8f


# instance fields
.field private final debug:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:Ljava/lang/String;

.field private mHasOverlayChild:Z

.field private mIndexBarGravity:I

.field mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

.field private mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

.field private mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

.field private final mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

.field private mIsSimpleIndexScroll:Z

.field private mNumberOfLanguages:I

.field private mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

.field private final mPreviewDelayRunnable:Ljava/lang/Runnable;

.field private mRegisteredDataSetObserver:Z

.field private mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

.field private mStartTouchDown:J

.field private mTouchY:F

.field private mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemAbstractIndexer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemIndexScrollView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemIndexScrollView;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemIndexScrollView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemIndexScrollView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    return-void
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    return v1

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    return v3

    :cond_2
    return v4
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCachingValue(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    return v8

    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-nez v5, :cond_0

    return v8

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5, v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawEffect(F)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->invalidate()V

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-eq v2, v9, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->invalidate()V

    const/4 v5, 0x1

    return v5

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v2

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-eq v2, v9, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v2

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5, v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawEffect(F)V

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    :cond_7
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    :goto_3
    if-eq v2, v9, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v2

    goto :goto_3

    :pswitch_2
    iput-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    const v5, -0x39e3c400    # -9999.0f

    iput v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v5, v4}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    return-void
.end method

.method private notifyIndexChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onIndexChanged(I)V

    :cond_0
    return-void
.end method

.method private setSimpleIndexWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setDimensions(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEffectBackgroundColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-wrap0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    return-void
.end method

.method public setEffectTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    return-void
.end method

.method public setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIndexBarGravity(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setPosition(I)V

    return-void
.end method

.method public setIndexBarPressedTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I

    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I

    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    :cond_0
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SemIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->cacheIndexInfo()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    :cond_3
    return-void
.end method

.method public setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    return-void
.end method

.method public setSimpleIndexScroll([Ljava/lang/String;I)V
    .locals 5

    const/4 v4, -0x1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SemIndexView.setSimpleIndexScroll(indexBarChar)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050242

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v1, p1, v4, v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    return-void
.end method

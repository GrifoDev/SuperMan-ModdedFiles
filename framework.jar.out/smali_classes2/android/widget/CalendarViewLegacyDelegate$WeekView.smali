.class Landroid/widget/CalendarViewLegacyDelegate$WeekView;
.super Landroid/view/View;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Landroid/icu/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    return v0
.end method

.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->initializePaints()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get14(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    :goto_1
    iput v1, v2, Landroid/graphics/Rect;->right:I

    :goto_2
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    sub-int v5, v6, v7

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    mul-int/lit8 v0, v2, 0x2

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get1(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_1

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get4(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v1

    aget-object v6, v6, v7

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get18(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v6

    goto :goto_1

    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get19(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    div-int/2addr v7, v0

    sub-int v4, v6, v7

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get19(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    div-int v4, v6, v0

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    :cond_4
    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get4(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v6

    :goto_3
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get18(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v6

    goto :goto_3
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    if-ne v6, v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-get20(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    :goto_0
    int-to-float v3, v0

    :goto_1
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v0, v4

    :cond_4
    int-to-float v1, v0

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    goto :goto_1
.end method

.method private initializePaints()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get1(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private updateSelectionPositions()V
    .locals 5

    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    :goto_0
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    goto :goto_0
.end method


# virtual methods
.method public getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int v0, v3, v4

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    :goto_1
    mul-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    iput v7, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    return v5

    :cond_0
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    mul-int v3, v0, v2

    iput v3, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6, v5}, Landroid/icu/util/Calendar;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v7
.end method

.method public getDayFromLocation(FLandroid/icu/util/Calendar;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v5, v6

    sub-int v1, v4, v5

    :goto_0
    int-to-float v4, v3

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    :cond_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    const/4 v4, 0x0

    return v4

    :cond_1
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int v3, v4, v5

    :goto_1
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    int-to-float v4, v3

    sub-float v4, p1, v4

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    if-eqz v2, :cond_5

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Landroid/icu/util/Calendar;->add(II)V

    const/4 v4, 0x1

    return v4
.end method

.method public getFirstDay()Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 9

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/icu/util/Calendar;->add(II)V

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    new-array v3, v3, [Z

    iput-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Landroid/icu/util/Calendar;->add(II)V

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Calendar;

    iput-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    :goto_2
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_4

    const/4 v2, 0x1

    :goto_3
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aput-boolean v2, v3, v1

    iget-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    or-int/2addr v3, v2

    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    iget-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    xor-int/lit8 v4, v2, 0x1

    and-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v1

    :goto_4
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/icu/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_4

    :cond_6
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/icu/util/Calendar;->add(II)V

    :cond_7
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get16(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    return-void
.end method

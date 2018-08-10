.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;
.super Landroid/widget/LinearLayout;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$1;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

.field private mAlreadyUpdated:Z

.field private mCalenderInfoUpdateCompleteListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

.field private mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLock:Ljava/lang/Object;

.field private mMaxEventCnt:I

.field private mPageType:I

.field private mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->closeWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    iput v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    iput-boolean v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAlreadyUpdated:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    sget-object v2, Lcom/android/systemui/R$styleable;->ServiceBoxEventList:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    sget-object v2, Lcom/android/systemui/R$styleable;->ServiceBoxPage:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private closeWindow()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->closeWindow()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public updateCalendarInfo()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getCachedEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateCalendarInfo(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAlreadyUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    if-nez p1, :cond_0

    const-string/jumbo v6, "CalendarEventListView"

    const-string/jumbo v7, "There\'s no event"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->removeAllViews()V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getCount()I

    move-result v3

    iget v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    if-eq v6, v10, :cond_1

    const/16 v6, 0xa

    if-le v3, v6, :cond_1

    const/16 v3, 0xa

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_6

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v6, v1, v8, v8}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    if-eq v6, v10, :cond_4

    iget v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    if-lt v1, v6, :cond_4

    const v6, 0x7f0a04b2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a04b3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a04b1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->addView(Landroid/view/View;II)V

    iget v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    if-ne v6, v10, :cond_5

    new-instance v6, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

    invoke-interface {v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;->onCompleted()V

    :cond_7
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAlreadyUpdated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateViewStyleOnWhiteWallpaper()V

    return-void

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public updateViewStyleOnWhiteWallpaper()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    if-eqz v2, :cond_2

    const v3, 0x7f0805bb

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const v3, 0x7f0805ba

    goto :goto_0

    :cond_3
    return-void
.end method

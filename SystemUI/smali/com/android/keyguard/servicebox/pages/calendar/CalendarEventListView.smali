.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
.super Landroid/widget/ListView;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMaxEventCnt:I

.field private mPageType:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->closeWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    iput v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    sget-object v2, Lcom/android/keyguard/R$styleable;->ServiceBoxEventList:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v2, Lcom/android/keyguard/R$styleable;->ServiceBoxEventList_maxEventCnt:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    sget-object v2, Lcom/android/keyguard/R$styleable;->ServiceBoxPage:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Lcom/android/keyguard/R$styleable;->ServiceBoxPage_pageType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private closeWindow()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->init()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->closeWindow()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public updateCalendarInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    return-void
.end method

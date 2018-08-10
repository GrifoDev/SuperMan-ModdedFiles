.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;
.super Landroid/widget/LinearLayout;
.source "CalendarNoEventView.java"


# instance fields
.field private mContentView:Lcom/android/systemui/widget/SystemUITextView;

.field private mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

.field private mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->closeWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private closeWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method private getOnPathAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;
    .locals 3

    const/16 v2, 0x9

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultDuration(I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultDirection(I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getSineOut80()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1f4
        0x258
        0x258
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x190
        0x1f4
        0x258
        0x190
        0x190
        0x190
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method private getOnPathListener(I)Lcom/altamirasoft/path_animation/PathListener;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07064e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-static {v0, p1, v1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->newInstance(IILandroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->getListener()Lcom/altamirasoft/path_animation/PathListener;

    move-result-object v1

    return-object v1
.end method

.method private getSineOut80()Landroid/view/animation/PathInterpolator;
    .locals 4

    const v3, 0x3e2e147b    # 0.17f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f0a04aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a04ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getOnPathAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method

.method private startSubAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->startSubAnimations()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->initViews()V

    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public updateViewStyleOnWhiteWallpaper()V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Lcom/android/systemui/widget/SystemUITextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    const v5, 0x7f060206

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mIconView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getOnPathListener(I)Lcom/altamirasoft/path_animation/PathListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    const v5, 0x7f06020d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    const v5, 0x7f06020c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public updateViews()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a4b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f120a4e

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

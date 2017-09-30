.class public Lcom/android/incallui/util/DebugScreen;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;,
        Lcom/android/incallui/util/DebugScreen$ScreenHolder;
    }
.end annotation


# static fields
.field private static mDebugScreenLayout:Landroid/widget/FrameLayout;

.field private static mParent:Landroid/view/ViewGroup;

.field private static mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

.field private static sInstance:Lcom/android/incallui/util/DebugScreen;


# instance fields
.field private mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

.field private mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

.field protected mMainContainer:Landroid/view/View;

.field protected mScreenContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->mParent:Landroid/view/ViewGroup;

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->sInstance:Lcom/android/incallui/util/DebugScreen;

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/DebugScreen;)Lcom/android/incallui/service/vt/VideoCallMetrics$Position;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    return-object v0
.end method

.method private addScreen(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mLogView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/DebugScreen;->getLogTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private clearScreen()V
    .locals 2

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mLogView:Landroid/widget/TextView;

    const-string v1, "-------------------- Log -------------------"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/util/DebugScreen;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->sInstance:Lcom/android/incallui/util/DebugScreen;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/DebugScreen;

    invoke-direct {v0}, Lcom/android/incallui/util/DebugScreen;-><init>()V

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->sInstance:Lcom/android/incallui/util/DebugScreen;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/DebugScreen;->sInstance:Lcom/android/incallui/util/DebugScreen;

    return-object v0
.end method

.method private static getLogTime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "000"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerDragListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mMainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mMainContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mMainContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_0
.end method

.method private startDrag()V
    .locals 5

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/util/DebugScreen$1;

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/util/DebugScreen$1;-><init>(Lcom/android/incallui/util/DebugScreen;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewGroup;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method public static write(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->sInstance:Lcom/android/incallui/util/DebugScreen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->sInstance:Lcom/android/incallui/util/DebugScreen;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/DebugScreen;->addScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/android/incallui/InCallActivity;)V
    .locals 3

    const v0, 0x7f10015a

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f100117

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mMainContainer:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/util/DebugScreen;->registerDragListener(Z)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f100118

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mParent:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/DebugScreen;->createScreenHolder()V

    invoke-direct {p0}, Lcom/android/incallui/util/DebugScreen;->clearScreen()V

    return-void
.end method

.method public createScreenHolder()V
    .locals 3

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    invoke-direct {v0}, Lcom/android/incallui/util/DebugScreen$ScreenHolder;-><init>()V

    sput-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10011b

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnShow:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnShow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100121

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnClear:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10011e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest1:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10011f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest2:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100120

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest3:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10011d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100124

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mLogView:Landroid/widget/TextView;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/DebugScreen;->updateControl()V

    :cond_1
    return-void
.end method

.method public moveScreen(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    sub-float v1, p2, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iput p1, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iput p2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mScreenContainer:Landroid/view/ViewGroup;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/incallui/util/DebugScreen;->registerDragListener(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-boolean v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->isShowingScreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->isShowingScreen:Z

    invoke-virtual {p0}, Lcom/android/incallui/util/DebugScreen;->updateControl()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/util/DebugScreen;->clearScreen()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10011b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/util/DebugScreen;->processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/util/DebugScreen;->startDrag()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v1, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/util/DebugScreen;->moveScreen(FF)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragLocation:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen;->mDragStart:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateControl()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-boolean v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->isShowingScreen:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnShow:Landroid/widget/Button;

    const-string v1, "Hide"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnShow:Landroid/widget/Button;

    const-string v1, "Show"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mBtnTest3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/util/DebugScreen;->mScreenHolder:Lcom/android/incallui/util/DebugScreen$ScreenHolder;

    iget-object v0, v0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

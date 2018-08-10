.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SplitClockView$1;
    }
.end annotation


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updatePatterns()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0531

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    return-void
.end method

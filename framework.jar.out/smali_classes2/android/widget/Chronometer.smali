.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$1;,
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private mBase:J

.field private mCountDown:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mLogged:Z

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private final mTickRunnable:Ljava/lang/Runnable;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/Chronometer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Chronometer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Chronometer;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-array v1, v4, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    return-void
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-int v0, v6

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xe10

    if-lt v0, v5, :cond_1

    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v0, v5

    :cond_1
    const/16 v5, 0x3c

    if-lt v0, v5, :cond_2

    div-int/lit8 v2, v0, 0x3c

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v0, v5

    :cond_2
    move v4, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-lez v1, :cond_3

    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez v2, :cond_4

    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v5, v6}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/icu/util/Measure;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/icu/util/Measure;

    invoke-virtual {v6, v5}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private init()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method private updateRunning()V
    .locals 4

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/widget/Chronometer;->updateText(J)V

    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private declared-synchronized updateText(J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    iget-boolean v6, p0, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v6, :cond_5

    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v4, v6, p1

    :goto_0
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    neg-long v4, v4

    const/4 v2, 0x1

    :cond_0
    iget-object v6, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v6, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const v8, 0x10405cd

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    :cond_2
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    new-instance v6, Ljava/util/Formatter;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v6, v7, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    :cond_3
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v4, p1, v6

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v6, :cond_4

    const-string/jumbo v6, "Chronometer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal format string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase()J
    .locals 2

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public isCountDown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method public isTheFinalCountDown()Z
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    const-string/jumbo v4, "https://youtu.be/9jK-NcRmVcw"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x81000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public setBase(J)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public setCountDown(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    }
.end annotation


# static fields
.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->checkPermissions()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "calendar_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "eventLocation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "description"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "dtstart"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "dtend"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "allDay"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->checkPermissions()Z

    return-void
.end method

.method private checkPermissions()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_CALENDAR"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.servicebox.PermissionsRequestActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "requestPermissions"

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_CALENDAR"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_1
    return v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
    .locals 2

    const-class v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    :cond_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getEvents(JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 11

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    return-void
.end method

.method public getTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->checkPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v4, v1

    add-long v6, v2, v4

    rem-long v4, v2, v8

    sub-long/2addr v2, v4

    rem-long v4, v6, v8

    sub-long/2addr v6, v4

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEvents(JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    return-void
.end method

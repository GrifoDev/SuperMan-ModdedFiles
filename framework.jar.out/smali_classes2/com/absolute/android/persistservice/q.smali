.class Lcom/absolute/android/persistservice/q;
.super Lcom/absolute/android/persistservice/ac;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/absolute/android/persistservice/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/persistservice/l;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/q;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V
    .locals 1

    .prologue
    .line 490
    iput-object p1, p0, Lcom/absolute/android/persistservice/q;->b:Lcom/absolute/android/persistservice/l;

    const-string/jumbo v0, "abt-persistence-watchdog"

    .line 491
    invoke-direct {p0, p2, p3, v0}, Lcom/absolute/android/persistservice/ac;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 517
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ac;->e()Z

    .line 518
    return-object v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ac;->e()Z

    .line 504
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 541
    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-eqz v1, :cond_2

    .line 542
    :cond_0
    if-nez v0, :cond_3

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 543
    :cond_3
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 545
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ac;->e()Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 559
    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-eqz v1, :cond_1

    .line 560
    :cond_0
    if-nez v0, :cond_2

    .line 568
    :goto_0
    return-void

    .line 559
    :cond_1
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 561
    :cond_2
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_4

    .line 562
    :cond_3
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 563
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    .line 564
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ac;->e()Z

    goto :goto_0

    .line 561
    :cond_4
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 578
    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-eqz v1, :cond_1

    .line 579
    :cond_0
    if-nez v0, :cond_2

    .line 585
    :goto_0
    return-void

    .line 578
    :cond_1
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 580
    :cond_2
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    .line 581
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    .line 582
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ac;->e()Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->f(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 594
    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-eqz v1, :cond_1

    .line 595
    :cond_0
    if-nez v0, :cond_2

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_1
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    .line 597
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ac;->e()Z

    goto :goto_0
.end method


# virtual methods
.method protected c()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 614
    new-instance v2, Lcom/absolute/android/persistservice/q;

    iget-object v3, p0, Lcom/absolute/android/persistservice/q;->b:Lcom/absolute/android/persistservice/l;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    invoke-direct {v2, v3, v4, v5}, Lcom/absolute/android/persistservice/q;-><init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V

    .line 616
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/ac;->k(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, v2}, Lcom/absolute/android/persistservice/ac;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    return v1
.end method

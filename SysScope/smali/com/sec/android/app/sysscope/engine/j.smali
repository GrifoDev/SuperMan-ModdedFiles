.class public Lcom/sec/android/app/sysscope/engine/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/sec/android/app/sysscope/engine/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/j;->a:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sysscope/engine/k;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sysscope/engine/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->b:Lcom/sec/android/app/sysscope/engine/k;

    return-void
.end method

.method private a(IIZ)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->e()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "SysScopeService"

    const-string v1, "registerAlarm, Just one time."

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->e()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    const-string v1, "OFF"

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private d()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.intent.action.SYSSCOPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "period_scan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private e()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->d()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->b:Lcom/sec/android/app/sysscope/engine/k;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/k;->a()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->b:Lcom/sec/android/app/sysscope/engine/k;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sysscope/engine/k;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->b:Lcom/sec/android/app/sysscope/engine/k;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/k;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/android/app/sysscope/engine/j;->a(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/j;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->e()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public b(I)V
    .locals 10

    const-wide/16 v8, 0xe10

    const-wide/16 v6, 0x3e8

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->e()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    mul-long/2addr v4, v8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->e()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAlarm, interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    mul-long/2addr v2, v8

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/j;->b:Lcom/sec/android/app/sysscope/engine/k;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/k;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12c

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/android/app/sysscope/engine/j;->a(IIZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/android/app/sysscope/engine/j;->a(IIZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/j;->b()V

    goto :goto_0
.end method

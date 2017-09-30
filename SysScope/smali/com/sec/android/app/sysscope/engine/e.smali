.class public Lcom/sec/android/app/sysscope/engine/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;Landroid/content/Context;)Lcom/sec/android/app/sysscope/engine/d;
    .locals 1

    const-string v0, "rpscanner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sysscope/job/RootProcessScanner;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adbscanner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sysscope/job/a;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/a;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "su_scanner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sysscope/job/g;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sysscope/job/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "partition_checker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sysscope/job/b;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/b;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "kernel_checker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;-><init>()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lcom/sec/android/app/sysscope/engine/e;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/sec/android/app/sysscope/engine/h;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sec/android/app/sysscope/engine/g;

    invoke-direct {v0, v4}, Lcom/sec/android/app/sysscope/engine/g;-><init>(Lcom/sec/android/app/sysscope/engine/f;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)Lcom/sec/android/app/sysscope/engine/h;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sysscope/engine/e;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/sec/android/app/sysscope/engine/d;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Lcom/sec/android/app/sysscope/engine/d;->d()V

    invoke-interface {v1}, Lcom/sec/android/app/sysscope/engine/d;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "general"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/sec/android/app/sysscope/engine/n;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/engine/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/n;->a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/h;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/sec/android/app/sysscope/engine/d;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filescanning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/android/app/sysscope/engine/c;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/engine/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/c;->a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/h;

    move-result-object v0

    goto :goto_0
.end method

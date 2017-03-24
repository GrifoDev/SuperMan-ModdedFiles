.class public Lcom/pekaka/systemui/killer/MemCleanView;
.super Landroid/widget/LinearLayout;
.source "MemCleanView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final OBSERVER_KEY:Ljava/lang/String; = "pekaka_memCleanView"


# instance fields
.field id_killer_clean_button:I

.field id_killer_mem_info:I

.field private isRegistered:Z

.field private isRunning:Z

.field layout_killer_layout:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCleanButton:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mMemInfo:Lcom/pekaka/systemui/killer/MemInfo;

.field private mMemInfoView:Lcom/pekaka/systemui/killer/MemInfoView;

.field mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mVisibleObserver:Landroid/database/ContentObserver;

.field private updateRunner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->layout_killer_layout:I

    iput v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_clean_button:I

    iput v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_mem_info:I

    new-instance v0, Lcom/pekaka/systemui/killer/MemCleanView$1;

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/pekaka/systemui/killer/MemCleanView$1;-><init>(Lcom/pekaka/systemui/killer/MemCleanView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mVisibleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/pekaka/systemui/killer/MemCleanView$2;

    invoke-direct {v0, p0}, Lcom/pekaka/systemui/killer/MemCleanView$2;-><init>(Lcom/pekaka/systemui/killer/MemCleanView;)V

    iput-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->updateRunner:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRunning:Z

    new-instance v0, Lcom/pekaka/systemui/killer/MemCleanView$3;

    invoke-direct {v0, p0}, Lcom/pekaka/systemui/killer/MemCleanView$3;-><init>(Lcom/pekaka/systemui/killer/MemCleanView;)V

    iput-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/pekaka/systemui/killer/MemCleanView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pekaka/systemui/killer/MemCleanView;)J
    .locals 2

    invoke-direct {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getMemoryAvi()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/pekaka/systemui/killer/MemCleanView;)Lcom/pekaka/systemui/killer/MemInfo;
    .locals 1

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfo:Lcom/pekaka/systemui/killer/MemInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pekaka/systemui/killer/MemCleanView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->updateRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pekaka/systemui/killer/MemCleanView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pekaka/systemui/killer/MemCleanView;->toggleUpdateRunner(Z)V

    return-void
.end method

.method private clear()V
    .locals 13

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "killer_white_list"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v11, "\\|"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v7, v0, v2

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v8, v11, v12

    iget v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x12c

    if-le v11, v12, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getMemoryAvi()J
    .locals 3

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v1
.end method

.method private getTotalMemory(Landroid/content/Context;)J
    .locals 11

    const-string v5, "/proc/meminfo"

    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v3, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    mul-long v1, v7, v9

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v1

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private toggleUpdateRunner(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRunning:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRunning:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->updateRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->updateRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    const-string v2, "pekaka_memCleanView"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->updateSettings()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_clean_button:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->clear()V

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfo:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-direct {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getMemoryAvi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/pekaka/systemui/killer/MemInfo;->setAvi(J)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    const/16 v10, 0x8

    const/16 v8, 0x10

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "killer_layout"

    const-string v9, "layout"

    invoke-static {v0, v8, v9}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->layout_killer_layout:I

    const-string v8, "killer_clean_button"

    const-string v9, "id"

    invoke-static {v0, v8, v9}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_clean_button:I

    const-string v8, "killer_mem_info"

    const-string v9, "id"

    invoke-static {v0, v8, v9}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_mem_info:I

    const-string v8, "activity"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/pekaka/systemui/killer/MemCleanView;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v10}, Lcom/pekaka/systemui/killer/MemCleanView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Lcom/pekaka/systemui/killer/MemInfo;

    invoke-direct {v8, v5, v6}, Lcom/pekaka/systemui/killer/MemInfo;-><init>(J)V

    iput-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfo:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iget v9, p0, Lcom/pekaka/systemui/killer/MemCleanView;->layout_killer_layout:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_clean_button:I

    invoke-virtual {p0, v8}, Lcom/pekaka/systemui/killer/MemCleanView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mCleanButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mCleanButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->id_killer_mem_info:I

    invoke-virtual {p0, v8}, Lcom/pekaka/systemui/killer/MemCleanView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/pekaka/systemui/killer/MemInfoView;

    iput-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfoView:Lcom/pekaka/systemui/killer/MemInfoView;

    iget-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfo:Lcom/pekaka/systemui/killer/MemInfo;

    iget-object v9, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfoView:Lcom/pekaka/systemui/killer/MemInfoView;

    invoke-virtual {v8, v9}, Lcom/pekaka/systemui/killer/MemInfo;->addObserver(Ljava/util/Observer;)V

    iget-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mMemInfo:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-direct {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getMemoryAvi()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/pekaka/systemui/killer/MemInfo;->setAvi(J)V

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x7

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const/4 v3, 0x0

    :goto_1
    array-length v8, v4

    if-ge v3, v8, :cond_0

    array-length v8, v1

    if-ge v3, v8, :cond_0

    aget-byte v8, v4, v3

    aget v9, v1, v3

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mCleanButton:Landroid/widget/ImageButton;

    const/16 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_0

    :array_0
    .array-data 4
        -0x42
        -0x4b
        -0x24
        0x41
        -0x40
        0x5a
        0x64
        -0x19
        -0x78
        0xc
        -0x59
        -0x7a
        -0x2c
        -0x1f
        0x72
        -0x32
    .end array-data
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/pekaka/systemui/killer/MemCleanView;->toggleUpdateRunner(Z)V

    if-nez p1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRegistered:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRegistered:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRegistered:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pekaka/systemui/killer/MemCleanView;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/pekaka/systemui/killer/MemCleanView;->isRegistered:Z

    goto :goto_1
.end method

.method protected updateSettings()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemCleanView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pekaka_memCleanView"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/pekaka/systemui/killer/MemCleanView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    move v2, v3

    invoke-virtual {p0, v2}, Lcom/pekaka/systemui/killer/MemCleanView;->setVisibility(I)V

    goto :goto_0
.end method

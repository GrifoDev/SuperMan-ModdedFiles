.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsPackageMonitor"
.end annotation


# static fields
.field private static threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x1e

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private onPackageChanged()V
    .locals 9

    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->getSendingUserId()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v5, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    return-void
.end method

.class public Lcom/sec/android/cover/manager/CoverRemoteViewManager;
.super Ljava/lang/Object;
.source "CoverRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteViewInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/manager/CoverRemoteViewManager;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mRemoteViewInfoTable:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;-><init>(Lcom/sec/android/cover/manager/CoverRemoteViewManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create CoverRemoteViewManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    return-object v0
.end method

.method private updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mRemoteViewInfoTable:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mRemoteViewInfoTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    return-object v0
.end method

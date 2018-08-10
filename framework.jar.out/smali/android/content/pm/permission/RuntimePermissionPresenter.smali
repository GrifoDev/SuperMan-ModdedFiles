.class public final Landroid/content/pm/permission/RuntimePermissionPresenter;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;,
        Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
    }
.end annotation


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "android.content.pm.permission.RuntimePermissionPresenter.key.result"

.field private static final TAG:Ljava/lang/String; = "RuntimePermPresenter"

.field private static sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-direct {v0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;
    .locals 3

    sget-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    :cond_0
    sget-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;
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
.method public getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-virtual {v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

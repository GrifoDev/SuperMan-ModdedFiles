.class final Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionsListenerRecord"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mListener:Landroid/media/session/IActiveSessionsListener;

.field private final mPid:I

.field private final mUid:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I

    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

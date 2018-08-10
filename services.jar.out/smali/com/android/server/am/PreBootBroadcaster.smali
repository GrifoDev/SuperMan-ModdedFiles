.class public abstract Lcom/android/server/am/PreBootBroadcaster;
.super Landroid/content/IIntentReceiver$Stub;
.source "PreBootBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PreBootBroadcaster$1;
    }
.end annotation


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreBootBroadcaster"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private final mIntent:Landroid/content/Intent;

.field private final mProgress:Lcom/android/internal/util/ProgressReporter;

.field private final mQuiet:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PreBootBroadcaster;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V
    .locals 4

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    new-instance v0, Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    iput-boolean p4, p0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const v1, 0x2000100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    return-void
.end method

.method public sendNext()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "PreBootBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is no longer running; skipping remaining receivers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    if-eqz v1, :cond_3

    move-object/from16 v0, v20

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    const v6, 0x10400b7

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    :cond_3
    const-string/jumbo v1, "PreBootBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pre-boot of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    move/from16 v17, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    return-void
.end method

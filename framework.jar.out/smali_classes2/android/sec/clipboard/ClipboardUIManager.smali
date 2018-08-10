.class public Landroid/sec/clipboard/ClipboardUIManager;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardUIManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUIManager"

.field private static mBinder:Landroid/os/IBinder;

.field private static mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

.field private static sInstance:Landroid/sec/clipboard/ClipboardUIManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecursiveCall:Ljava/lang/Runnable;

.field private mSemClipboardManager:Lcom/samsung/android/content/clipboard/SemClipboardManager;

.field private mViewID:I


# direct methods
.method static synthetic -get0(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/sec/clipboard/ClipboardUIManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mSemClipboardManager:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    return-object v0
.end method

.method static synthetic -set0(Landroid/sec/clipboard/ClipboardUIManager;Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mSemClipboardManager:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mSemClipboardManager:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mSemClipboardManager:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->initVariable()V

    return-void
.end method

.method private closeClopboardUI(Z)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    return v4

    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    invoke-interface {v1, v2, p1}, Landroid/sec/clipboard/IClipboardUIManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1

    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    :cond_0
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method private initVariable()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    return-void
.end method

.method private setupInRuntime()Z
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v2, "clipboarduiservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "ClipboardUIManager"

    const-string/jumbo v3, "ClipboardUIService is not ready yet!"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardUIManager;->binderDied()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "ClipboardUIManager"

    const-string/jumbo v3, "setupInRuntime(): RemoteException!"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 6

    const-string/jumbo v2, "ClipboardUIManager"

    const-string/jumbo v3, "ClipboardUIManager showClipBoard()"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardUIManager;->show(ILandroid/os/IBinder;)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    const-string/jumbo v2, "ClipboardUIManager"

    const-string/jumbo v3, "ClipboardUIManager is null!"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ClipboardUIManager"

    const-string/jumbo v1, "binderDied. Reset variable."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public dismiss()V
    .locals 2

    const-string/jumbo v0, "ClipboardUIManager"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    return-void
.end method

.method public finish()V
    .locals 2

    const-string/jumbo v0, "ClipboardUIManager"

    const-string/jumbo v1, "Finish ClipboardService"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->finish(Z)V

    return-void
.end method

.method public finish(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ClipboardUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    return-void
.end method

.method public isShowing()Z
    .locals 4

    const-string/jumbo v2, "ClipboardUIManager"

    const-string/jumbo v3, "ClipboardUIManager isShowingClipBoard()"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->isShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ClipboardUIManager"

    const-string/jumbo v3, "isShowing(): RemoteException"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ClipboardUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ClipboardUIManager > setPasteTargetViewInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardUIManager;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ClipboardUIManager"

    const-string/jumbo v2, "mCBUIManager is null!!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2

    const-string/jumbo v0, "ClipboardUIManager"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    return-void
.end method

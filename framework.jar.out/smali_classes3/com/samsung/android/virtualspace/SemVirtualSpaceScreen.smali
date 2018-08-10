.class public Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
.super Ljava/lang/Object;
.source "SemVirtualSpaceScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;,
        Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;,
        Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;
    }
.end annotation


# static fields
.field public static final FLAG_CLEAR_MAIN_DISPLAY:I = 0x20

.field public static final FLAG_ENABLE_HW_COMPOSITION:I = 0x40

.field public static final FLAG_REDIRECT_MAIN_DISPLAY:I = 0x10

.field public static final PRIORITY_HIGH:I = 0x5a

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_MAX:I = 0x64

.field public static final PRIORITY_NORMAL:I = 0x32


# instance fields
.field private final mCallbackProxy:Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;

.field private mClosed:Z

.field private mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

.field private mOnReadySent:Z

.field private final mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

.field private mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mOnReadySent:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mClosed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mOnReadySent:Z

    return p1
.end method

.method constructor <init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;Lcom/samsung/android/virtualspace/IVSScreen;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;-><init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)V

    iput-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mCallbackProxy:Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "SemVirtualSpaceScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mCallbackProxy:Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;

    invoke-interface {v1, v2}, Lcom/samsung/android/virtualspace/IVSScreen;->registerCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "registerCallback failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "grabFocus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->releaseFocus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "screen close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSScreen;->dispatchInputEvent(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getAppOrientation()I
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "getAppOrientation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->getAppOrientation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 4

    sget-boolean v2, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "getBounds()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v2, v0}, Lcom/samsung/android/virtualspace/IVSScreen;->getBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "Call failed with"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->getOrientation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getPriority()I
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "getPriority()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->getPriority()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getRotation()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->getRotation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getSize()Landroid/graphics/Point;
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v2, v1}, Lcom/samsung/android/virtualspace/IVSScreen;->getSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "Call failed with"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchActivity(Landroid/content/Intent;)Z
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchActivity() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSScreen;->launchActivity(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public redirectIME(Z)V
    .locals 1

    const/16 v0, 0x7db

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->redirectSystemWindows(IZ)V

    return-void
.end method

.method public redirectSystemWindows(IZ)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "redirectSystemWindows("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/virtualspace/IVSScreen;->redirectSystemWindows(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerEventListener(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerEventListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    return-void
.end method

.method public registerStateListener(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerStateListener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    if-eq v1, p1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mClosed:Z

    if-eqz v1, :cond_3

    invoke-interface {p1, p0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;->onClosed(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mOnReadySent:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->resendState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "takeFocus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSScreen;->takeFocus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p1, :cond_1

    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSScreen;->setPriority(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSScreen;->setRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "setSurface()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mScreen:Lcom/samsung/android/virtualspace/IVSScreen;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSScreen;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterEventListener(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterEventListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object v3, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mEventListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    return-void
.end method

.method public unregisterStateListener(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterStateListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object v3, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->mStateListener:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    return-void
.end method

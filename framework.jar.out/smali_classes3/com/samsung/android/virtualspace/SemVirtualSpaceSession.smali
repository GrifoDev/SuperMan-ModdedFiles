.class public Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;
.super Ljava/lang/Object;
.source "SemVirtualSpaceSession.java"


# static fields
.field public static final VIRTUAL_KEYBOARD_MODE_DISABLED:I = -0x1

.field public static final VIRTUAL_KEYBOARD_MODE_FOLLOW:I = 0x1

.field public static final VIRTUAL_KEYBOARD_MODE_SINGLE:I


# instance fields
.field private final mSession:Lcom/samsung/android/virtualspace/IVSSession;


# direct methods
.method constructor <init>(Lcom/samsung/android/virtualspace/IVSSession;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemVirtualSpace"

    const-string/jumbo v1, "SemVirtualSpaceSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    return-void
.end method

.method private static validateFlags(I)V
    .locals 1

    and-int/lit8 v0, p0, -0x71

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "session close()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSSession;->close()V
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

.method public createScreen(I)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "createScreen(0x%x)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->validateFlags(I)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v2, p1}, Lcom/samsung/android/virtualspace/IVSSession;->createScreenDefault(I)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;-><init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "Call failed with"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v7
.end method

.method public createScreen(IIII)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "createScreen(%d, %d, %d, 0x%x)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->validateFlags(I)V

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    if-lez p3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/virtualspace/IVSSession;->createScreen(IIII)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;-><init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "Call failed with"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchKeyEvent("

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
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSSession;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
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

.method public setMouseCursorVisibility(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSSession;->setMouseCursorVisibility(Z)V
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

.method public setVirtualKeyboardMode(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemVirtualSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVirtualKeyboardMode("

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
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v1, p1}, Lcom/samsung/android/virtualspace/IVSSession;->setVirtualKeyboardMode(I)V
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

.class public Lcom/samsung/android/desktopmode/LoadingScreenManager;
.super Ljava/lang/Object;
.source "LoadingScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;,
        Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;,
        Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final STATE_NOT_SHOWING:I = 0x0

.field public static final STATE_SHOWING_ENTER:I = 0x1

.field public static final STATE_SHOWING_EXIT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalLoadingScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

.field private mState:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/desktopmode/LoadingScreenManager;)Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/desktopmode/LoadingScreenManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private createExternal(Landroid/view/Display;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager;Landroid/content/Context;Landroid/view/Display;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createInternal(Landroid/view/Display;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    :cond_0
    return-void
.end method

.method private createLoadingScreens()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->createInternal(Landroid/view/Display;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->createExternal(Landroid/view/Display;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private dismissExternal()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private dismissInternal()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    :cond_0
    return-void
.end method

.method private showExternal()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Display was removed in the meantime."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showInternal()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissAll()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissAll()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissAll(), Already not showing loading screen. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iput v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->dismissExternal()V

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->dismissInternal()V

    return-void
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    return v0
.end method

.method public registerAnimationListener(Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    return-void
.end method

.method public showAll(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAll(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAll(), Already showing loading screen. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->createLoadingScreens()V

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->showExternal()V

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->showInternal()V

    return-void

    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->-wrap0(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V

    :cond_1
    return-void
.end method

.method public stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "STATE_NOT_SHOWING"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STATE_SHOWING_ENTER"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "STATE_SHOWING_EXIT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "{mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

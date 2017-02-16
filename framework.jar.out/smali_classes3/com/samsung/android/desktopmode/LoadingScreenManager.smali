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

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    .line 43
    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 42
    return-void
.end method

.method private createExternal(Landroid/view/Display;)V
    .locals 3
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager;Landroid/content/Context;Landroid/view/Display;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method private createInternal(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    .line 113
    :cond_0
    return-void
.end method

.method private createLoadingScreens()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 97
    .local v1, "displays":[Landroid/view/Display;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 98
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_2

    .line 99
    invoke-direct {p0, v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->createInternal(Landroid/view/Display;)V

    .line 97
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 101
    invoke-direct {p0, v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->createExternal(Landroid/view/Display;)V

    goto :goto_1

    .line 91
    .end local v0    # "display":Landroid/view/Display;
    :cond_3
    return-void
.end method

.method private dismissExternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "loadingScreen$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    .line 156
    .local v0, "loadingScreen":Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 158
    .end local v0    # "loadingScreen":Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 159
    iput-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    .line 153
    .end local v1    # "loadingScreen$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private dismissInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    iput-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    .line 163
    :cond_0
    return-void
.end method

.method private showExternal()V
    .locals 5

    .prologue
    .line 120
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 121
    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    .line 125
    .local v2, "loadingScreen":Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    sget-boolean v3, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Display was removed in the meantime."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 119
    .end local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;>;"
    .end local v2    # "loadingScreen":Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
    :cond_1
    return-void
.end method

.method private showInternal()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissAll()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    if-nez v0, :cond_2

    .line 144
    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissAll(), Already not showing loading screen. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    iget v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    return-void

    .line 148
    :cond_2
    iput v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->dismissExternal()V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->dismissInternal()V

    .line 140
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    return v0
.end method

.method public registerAnimationListener(Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    .line 64
    return-void
.end method

.method public showAll(Z)V
    .locals 3
    .param p1, "enter"    # Z

    .prologue
    .line 77
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

    .line 79
    :cond_0
    iget v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    if-eqz v0, :cond_2

    .line 80
    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAll(), Already showing loading screen. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    iget v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    return-void

    .line 85
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->createLoadingScreens()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->showExternal()V

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->showInternal()V

    .line 76
    return-void

    .line 85
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->-wrap0(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V

    .line 68
    :cond_1
    return-void
.end method

.method public stateToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 60
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

    .line 54
    :pswitch_0
    const-string/jumbo v0, "STATE_NOT_SHOWING"

    return-object v0

    .line 56
    :pswitch_1
    const-string/jumbo v0, "STATE_SHOWING_ENTER"

    return-object v0

    .line 58
    :pswitch_2
    const-string/jumbo v0, "STATE_SHOWING_EXIT"

    return-object v0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "{mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mState:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    if-eqz v3, :cond_0

    .line 176
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mInternalLoadingScreen:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 180
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager;->mExternalLoadingScreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ls$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;

    .line 182
    .local v0, "ls":Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    .end local v0    # "ls":Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
    .end local v1    # "ls$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

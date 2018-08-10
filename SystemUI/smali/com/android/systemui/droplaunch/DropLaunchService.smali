.class public Lcom/android/systemui/droplaunch/DropLaunchService;
.super Landroid/app/Service;
.source "DropLaunchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/droplaunch/DropLaunchService$1;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

.field private mContent:Lcom/android/systemui/droplaunch/LaunchGuideView;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/droplaunch/DropLaunchService;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/droplaunch/DropLaunchService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/droplaunch/DropLaunchService$1;-><init>(Lcom/android/systemui/droplaunch/DropLaunchService;)V

    iput-object v0, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x2

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "DropLaunchService"

    const-string/jumbo v5, "Current system state can\'t provide multi window."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v4, "DropLaunchService"

    const-string/jumbo v5, "System services proxy is not available yet."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "DropLaunchService"

    const-string/jumbo v5, "Current system doesn\'t support popup window."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/systemui/droplaunch/LaunchGuideView;

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/DropLaunchService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/droplaunch/LaunchGuideView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mContent:Lcom/android/systemui/droplaunch/LaunchGuideView;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/DropLaunchService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130103

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mContent:Lcom/android/systemui/droplaunch/LaunchGuideView;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string/jumbo v4, "QuickLaunchGuideView"

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x300

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    :cond_4
    const-string/jumbo v4, "pendingIntent"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_6

    instance-of v4, v1, Landroid/app/PendingIntent;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    const-string/jumbo v4, "DropLaunchService"

    const-string/jumbo v5, "Requested pending intent is not available"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v7

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "DropLaunchService"

    const-string/jumbo v5, "Request to show freeform quick launch guide(PendingIntent)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    check-cast v2, Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mContent:Lcom/android/systemui/droplaunch/LaunchGuideView;

    iget-object v5, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/droplaunch/LaunchGuideView;->setCallbackAndInitialize(Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/systemui/droplaunch/DropLaunchService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

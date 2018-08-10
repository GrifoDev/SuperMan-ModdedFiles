.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDesktopModeLauncherImpl"
.end annotation


# instance fields
.field mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;

    return-void
.end method


# virtual methods
.method public commandDesktopLauncherVisibility(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;->onCommandReceived(II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

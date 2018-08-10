.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;
.super Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopModeBlockerDelegate"
.end annotation


# instance fields
.field private mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    return-void
.end method


# virtual methods
.method nullOutBlocker()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    return-void
.end method

.method public onBlocked()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

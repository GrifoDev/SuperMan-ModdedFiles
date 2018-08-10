.class Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator$1;
.super Ljava/lang/Object;
.source "CoverSupportStateController.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUnverifiedCoverAttachChanged, attached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;

    iget-object v0, v0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get6(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    :cond_1
    return-void
.end method

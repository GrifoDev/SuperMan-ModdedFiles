.class Lcom/android/server/desktopmode/CoverSupportStateController$3;
.super Ljava/lang/Object;
.source "CoverSupportStateController.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverSupportStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverSupportStateController;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$3;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$3;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBlocked(), !mAuthComplete"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$3;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get7(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x104029d

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$3;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get2(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$3;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get5(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$3;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get4(Lcom/android/server/desktopmode/CoverSupportStateController;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_2

    const v0, 0x104029b

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBlocked(), Unknown reason"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

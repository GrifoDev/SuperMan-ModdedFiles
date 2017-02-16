.class Lcom/android/systemui/cover/SViewCoverLauncher$1;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SViewCoverLauncher;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SViewCoverLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startNotifcationIntent(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->-get0(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->startNotifcationIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startShortcutApp(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->-get0(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->-get0(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->startShortcutApp(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public startShortcutDragAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->-get0(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->startShortcutDragAnimation()V

    return-void
.end method

.method public stopShortcutDragAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->-get0(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->stopShortcutDragAnimation()V

    return-void
.end method

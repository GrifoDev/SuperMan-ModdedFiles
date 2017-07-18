.class Lcom/android/launcher2/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "LauncherApplication"

    const-string v1, "onChange: mBadgeRefreshHandler removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->access$100(Lcom/android/launcher2/LauncherApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1}, Lcom/android/launcher2/LauncherApplication;->access$000(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->access$100(Lcom/android/launcher2/LauncherApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1}, Lcom/android/launcher2/LauncherApplication;->access$000(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

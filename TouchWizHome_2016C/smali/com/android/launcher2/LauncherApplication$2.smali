.class Lcom/android/launcher2/LauncherApplication$2;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LauncherApplication"

    const-string v1, "run: mBadgeRefreshHandler reloadBadges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    # getter for: Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;
    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->access$200(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    return-void
.end method

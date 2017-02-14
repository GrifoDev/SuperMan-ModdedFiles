.class public Lcom/android/launcher2/RestoreCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestoreCompleteReceiver.java"


# static fields
.field private static final ACTION_RESTORE_COMPLETE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESTORE_COMPLETE"

.field private static final TAG:Ljava/lang/String; = "RestoreCompleteReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "com.sec.android.intent.action.HOME_RESTORE_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/LauncherModel;->handleRestoreComplete(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "RestoreCompleteReceiver"

    const-string v2, "app or launcher model is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

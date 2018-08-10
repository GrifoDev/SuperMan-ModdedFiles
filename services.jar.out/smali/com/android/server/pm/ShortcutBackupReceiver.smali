.class public Lcom/android/server/pm/ShortcutBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutBackupReceiver.java"


# static fields
.field static final BROADCAST_PERMISSION:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field private static final REQUEST_BACKUP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT"

.field private static final REQUEST_BACKUP_SHORTCUT_INNER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUTBR"

.field private static final REQUEST_RESTORE_SHORTCUT:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT"

.field private static final REQUEST_RESTORE_SHORTCUT_INNER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUTBR"

.field static final TAG:Ljava/lang/String; = "ShortcutBackupReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ShortcutBackupReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUTBR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "com.samsung.android.shortcutbackupservice"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUTBR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    return-void
.end method

.class Lcom/android/launcher2/LauncherBackupAgentHelper$1;
.super Ljava/lang/Object;
.source "LauncherBackupAgentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherBackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherBackupAgentHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherBackupAgentHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherBackupAgentHelper$1;->this$0:Lcom/android/launcher2/LauncherBackupAgentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->finish()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "onRestore(), activity recreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->recreate()V

    :cond_1
    return-void
.end method

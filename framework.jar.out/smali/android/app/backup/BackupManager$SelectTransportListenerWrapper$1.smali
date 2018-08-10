.class Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;
.super Ljava/lang/Object;
.source "BackupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

.field final synthetic val$transportName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iput-object p2, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->val$transportName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    invoke-static {v0}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->-get0(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;)Landroid/app/backup/SelectBackupTransportCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->val$transportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/backup/SelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

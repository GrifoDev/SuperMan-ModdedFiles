.class Lcom/android/server/backup/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p6, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p6, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p6, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    iput p9, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p8, v0, v1

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p6, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    iput-boolean p9, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

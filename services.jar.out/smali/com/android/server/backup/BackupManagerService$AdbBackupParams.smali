.class Lcom/android/server/backup/BackupManagerService$AdbBackupParams;
.super Lcom/android/server/backup/BackupManagerService$AdbParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public extraFlag:I

.field public includeApks:Z

.field public includeKeyValue:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$AdbParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iput-boolean p3, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeApks:Z

    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeObbs:Z

    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeShared:Z

    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->doWidgets:Z

    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->allApps:Z

    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeSystem:Z

    iput-boolean p9, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->doCompress:Z

    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeKeyValue:Z

    iput-object p11, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->packages:[Ljava/lang/String;

    iput p12, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->extraFlag:I

    iput p13, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->userId:I

    return-void
.end method

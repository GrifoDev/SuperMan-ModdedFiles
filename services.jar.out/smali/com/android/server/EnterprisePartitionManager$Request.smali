.class Lcom/android/server/EnterprisePartitionManager$Request;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EnterprisePartitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# static fields
.field static final EPM_CMD_CHANGE_PASSWORD:Ljava/lang/String; = "change_password"

.field static final EPM_CMD_CHANGE_PERMISSION_MIGRATION:Ljava/lang/String; = "change_permission_migration"

.field static final EPM_CMD_COPY:Ljava/lang/String; = "copy"

.field static final EPM_CMD_COPY_CANCEL:Ljava/lang/String; = "cancel"

.field static final EPM_CMD_COPY_CHUNK:Ljava/lang/String; = "chunk"

.field static final EPM_CMD_COPY_WHOLE:Ljava/lang/String; = "whole"

.field static final EPM_CMD_CREATE_PARTITON:Ljava/lang/String; = "create_partition"

.field static final EPM_CMD_DELETE_FILE:Ljava/lang/String; = "delete_file"

.field static final EPM_CMD_DLP_NOTIFY:Ljava/lang/String; = "dlp_notify"

.field static final EPM_CMD_GET_FILE_INFO:Ljava/lang/String; = "get_file_info"

.field static final EPM_CMD_HANDLE_ENC_PKG:Ljava/lang/String; = "handle_enc_pkg"

.field static final EPM_CMD_IS_FILE_EXIST:Ljava/lang/String; = "is_file_exist"

.field static final EPM_CMD_IS_MOUNTED:Ljava/lang/String; = "is_mounted"

.field static final EPM_CMD_MIGRATION:Ljava/lang/String; = "migration"

.field static final EPM_CMD_MOUNT:Ljava/lang/String; = "mount"

.field static final EPM_CMD_MOUNT_LEGACY:Ljava/lang/String; = "mount_legacy"

.field static final EPM_CMD_MOUNT_PRIVATEMODE:Ljava/lang/String; = "mount_privatemode"

.field static final EPM_CMD_PREMOUNT:Ljava/lang/String; = "premount"

.field static final EPM_CMD_PRIVATEMODE_CHANGE_PASSWORD:Ljava/lang/String; = "privatemode_change_password"

.field static final EPM_CMD_REMOVE_PARTITON:Ljava/lang/String; = "remove_partition"

.field static final EPM_CMD_RESET_PARTITON:Ljava/lang/String; = "reset_partition"

.field static final EPM_CMD_SCAN_DIR:Ljava/lang/String; = "scan_dir"

.field static final EPM_CMD_SECURE_FS:Ljava/lang/String; = "secure_fs"

.field static final EPM_CMD_SYNC_PKG_DIR:Ljava/lang/String; = "sync_pkg_dir"

.field static final EPM_CMD_UNMOUNT:Ljava/lang/String; = "unmount"

.field static final EPM_CMD_UNMOUNT_LEGACY:Ljava/lang/String; = "unmount_legacy"

.field static final EPM_CMD_UNMOUNT_PRIVATEMODE:Ljava/lang/String; = "unmount_privatemode"

.field static final EPM_CMD_VERIFY_PASSWORD:Ljava/lang/String; = "verify_password"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

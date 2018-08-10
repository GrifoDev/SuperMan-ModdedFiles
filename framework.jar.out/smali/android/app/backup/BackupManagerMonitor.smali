.class public Landroid/app/backup/BackupManagerMonitor;
.super Ljava/lang/Object;
.source "BackupManagerMonitor.java"


# static fields
.field public static final EXTRA_LOG_CANCEL_ALL:Ljava/lang/String; = "android.app.backup.extra.LOG_CANCEL_ALL"

.field public static final EXTRA_LOG_EVENT_CATEGORY:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_CATEGORY"

.field public static final EXTRA_LOG_EVENT_ID:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_ID"

.field public static final EXTRA_LOG_EVENT_PACKAGE_NAME:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

.field public static final EXTRA_LOG_EVENT_PACKAGE_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

.field public static final EXTRA_LOG_EXCEPTION_FULL_BACKUP:Ljava/lang/String; = "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

.field public static final EXTRA_LOG_ILLEGAL_KEY:Ljava/lang/String; = "android.app.backup.extra.LOG_ILLEGAL_KEY"

.field public static final EXTRA_LOG_MANIFEST_PACKAGE_NAME:Ljava/lang/String; = "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

.field public static final EXTRA_LOG_OLD_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_OLD_VERSION"

.field public static final EXTRA_LOG_POLICY_ALLOW_APKS:Ljava/lang/String; = "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

.field public static final EXTRA_LOG_PREFLIGHT_ERROR:Ljava/lang/String; = "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

.field public static final EXTRA_LOG_RESTORE_ANYWAY:Ljava/lang/String; = "android.app.backup.extra.LOG_RESTORE_ANYWAY"

.field public static final EXTRA_LOG_RESTORE_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_RESTORE_VERSION"

.field public static final EXTRA_LOG_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

.field public static final LOG_EVENT_CATEGORY_AGENT:I = 0x2

.field public static final LOG_EVENT_CATEGORY_BACKUP_MANAGER_POLICY:I = 0x3

.field public static final LOG_EVENT_CATEGORY_TRANSPORT:I = 0x1

.field public static final LOG_EVENT_ID_APK_NOT_INSTALLED:I = 0x28

.field public static final LOG_EVENT_ID_APP_HAS_NO_AGENT:I = 0x1c

.field public static final LOG_EVENT_ID_BACKUP_DISABLED:I = 0xd

.field public static final LOG_EVENT_ID_CANNOT_RESTORE_WITHOUT_APK:I = 0x29

.field public static final LOG_EVENT_ID_CANT_FIND_AGENT:I = 0x1e

.field public static final LOG_EVENT_ID_CORRUPT_MANIFEST:I = 0x2e

.field public static final LOG_EVENT_ID_DEVICE_NOT_PROVISIONED:I = 0xe

.field public static final LOG_EVENT_ID_ERROR_PREFLIGHT:I = 0x10

.field public static final LOG_EVENT_ID_EXCEPTION_FULL_BACKUP:I = 0x13

.field public static final LOG_EVENT_ID_EXPECTED_DIFFERENT_PACKAGE:I = 0x2b

.field public static final LOG_EVENT_ID_FULL_BACKUP_CANCEL:I = 0x4

.field public static final LOG_EVENT_ID_FULL_RESTORE_ALLOW_BACKUP_FALSE:I = 0x27

.field public static final LOG_EVENT_ID_FULL_RESTORE_SIGNATURE_MISMATCH:I = 0x25

.field public static final LOG_EVENT_ID_FULL_RESTORE_TIMEOUT:I = 0x2d

.field public static final LOG_EVENT_ID_ILLEGAL_KEY:I = 0x5

.field public static final LOG_EVENT_ID_KEY_VALUE_BACKUP_CANCEL:I = 0x15

.field public static final LOG_EVENT_ID_KEY_VALUE_RESTORE_TIMEOUT:I = 0x1f

.field public static final LOG_EVENT_ID_LOST_TRANSPORT:I = 0x19

.field public static final LOG_EVENT_ID_MISSING_SIGNATURE:I = 0x2a

.field public static final LOG_EVENT_ID_NO_DATA_TO_SEND:I = 0x7

.field public static final LOG_EVENT_ID_NO_PACKAGES:I = 0x31

.field public static final LOG_EVENT_ID_NO_PM_METADATA_RECEIVED:I = 0x17

.field public static final LOG_EVENT_ID_NO_RESTORE_METADATA_AVAILABLE:I = 0x16

.field public static final LOG_EVENT_ID_PACKAGE_INELIGIBLE:I = 0x9

.field public static final LOG_EVENT_ID_PACKAGE_KEY_VALUE_PARTICIPANT:I = 0xa

.field public static final LOG_EVENT_ID_PACKAGE_NOT_FOUND:I = 0xc

.field public static final LOG_EVENT_ID_PACKAGE_NOT_PRESENT:I = 0x1a

.field public static final LOG_EVENT_ID_PACKAGE_STOPPED:I = 0xb

.field public static final LOG_EVENT_ID_PACKAGE_TRANSPORT_NOT_PRESENT:I = 0xf

.field public static final LOG_EVENT_ID_PM_AGENT_HAS_NO_METADATA:I = 0x18

.field public static final LOG_EVENT_ID_QUOTA_HIT_PREFLIGHT:I = 0x12

.field public static final LOG_EVENT_ID_RESTORE_ANY_VERSION:I = 0x22

.field public static final LOG_EVENT_ID_RESTORE_VERSION_HIGHER:I = 0x1b

.field public static final LOG_EVENT_ID_SIGNATURE_MISMATCH:I = 0x1d

.field public static final LOG_EVENT_ID_SYSTEM_APP_NO_AGENT:I = 0x26

.field public static final LOG_EVENT_ID_TRANSPORT_IS_NULL:I = 0x32

.field public static final LOG_EVENT_ID_UNKNOWN_VERSION:I = 0x2c

.field public static final LOG_EVENT_ID_VERSIONS_MATCH:I = 0x23

.field public static final LOG_EVENT_ID_VERSION_OF_BACKUP_OLDER:I = 0x24

.field public static final LOG_EVENT_ID_WIDGET_METADATA_MISMATCH:I = 0x2f

.field public static final LOG_EVENT_ID_WIDGET_UNKNOWN_VERSION:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

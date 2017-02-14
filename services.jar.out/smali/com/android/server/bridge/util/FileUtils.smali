.class public Lcom/android/server/bridge/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENAMETOOLONG:I = -0x24

.field public static final ENOENT:I = -0x2

.field public static final ENOSPC:I = -0x1c

.field public static final ENOSPCPOSITIVE:I = 0x1c

.field public static final FAIL_ERROR_CODE_CANCELED:I = 0x2

.field public static final FAIL_ERROR_CODE_CONTAINER_STATE_PROBLEM:I = 0x1

.field public static final FAIL_ERROR_CODE_FILE_MOVE_FAIL:I = 0x7

.field public static final FAIL_ERROR_CODE_FILE_MOVE_ONGOING:I = 0x9

.field public static final FAIL_ERROR_CODE_FILE_NAME_TOO_LONG:I = 0xe

.field public static final FAIL_ERROR_CODE_FILE_REGISTRATION_EXCEPTION:I = 0xc

.field public static final FAIL_ERROR_CODE_NOT_ALLOWED_FILENAME:I = 0x5

.field public static final FAIL_ERROR_CODE_NOT_ALLOWED_SRCPATH:I = 0x4

.field public static final FAIL_ERROR_CODE_NOT_ERROR:I = 0x0

.field public static final FAIL_ERROR_CODE_PERMISSIONS_DENIED:I = 0xd

.field public static final FAIL_ERROR_CODE_POLICY_NOT_ALLOWED:I = 0xb

.field public static final FAIL_ERROR_CODE_REMOTE_EXCEPTION:I = 0xa

.field public static final FAIL_ERROR_CODE_SRCDIR_REMOVE_FAIL:I = 0x3

.field public static final FAIL_ERROR_CODE_SRC_NOT_EXIST:I = 0x6

.field public static final FAIL_ERROR_CODE_STORAGE_FULL:I = 0x8

.field public static final MOVE_TO_KNOX_FILES_SIZE:I = 0xc8

.field public static final NOTIFICATION_ID_MOVE_TO_KNOX:I = 0x69

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field public static final UNDEFINED:I = -0xf423f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedFileName(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v5

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Not Allowed fileExtName   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Allowed fileExtName   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

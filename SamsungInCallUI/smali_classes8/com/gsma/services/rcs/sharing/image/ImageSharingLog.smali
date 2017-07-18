.class public Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;
.super Ljava/lang/Object;
.source "ImageSharingLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/ImageSharingLog$IshPermissions;,
        Lcom/gsma/services/rcs/sharing/image/ImageSharingLog$IshIntents;
    }
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FILESIZE:Ljava/lang/String; = "filesize"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x3

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final SHARING_ID:Ljava/lang/String; = "sharingId"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRANSFERRED:Ljava/lang/String; = "transferred"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.imageshare/imageshare"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/gsma/services/rcs/capability/CapabilitiesLog;
.super Ljava/lang/Object;
.source "CapabilitiesLog.java"


# static fields
.field public static final AUTOMATA:Ljava/lang/String; = "automata"

.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CAPABILITY_EXTENSIONS:Ljava/lang/String; = "capability_extensions"

.field public static final CAPABILITY_FILE_TRANSFER:Ljava/lang/String; = "capability_file_transfer"

.field public static final CAPABILITY_GEOLOC_PUSH:Ljava/lang/String; = "capability_geoloc_push"

.field public static final CAPABILITY_IMAGE_SHARE:Ljava/lang/String; = "capability_image_sharing"

.field public static final CAPABILITY_IM_SESSION:Ljava/lang/String; = "capability_im_session"

.field public static final CAPABILITY_VIDEO_SHARE:Ljava/lang/String; = "capability_video_sharing"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.capability/capability"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/capability/CapabilitiesLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingLog;
.super Ljava/lang/Object;
.source "GeolocSharingLog.java"


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x5

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final SHARING_ID:Ljava/lang/String; = "sharing_id"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.geolocshare/geolocshare"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

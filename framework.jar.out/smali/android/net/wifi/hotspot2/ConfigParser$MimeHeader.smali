.class Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimeHeader"
.end annotation


# instance fields
.field public boundary:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public encodingType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;-><init>()V

    return-void
.end method

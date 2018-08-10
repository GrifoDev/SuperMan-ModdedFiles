.class Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimePart"
.end annotation


# instance fields
.field public data:[B

.field public isLast:Z

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/hotspot2/ConfigParser$MimePart;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;-><init>()V

    return-void
.end method

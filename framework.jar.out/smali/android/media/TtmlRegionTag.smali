.class Landroid/media/TtmlRegionTag;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public mExtentInfo:Ljava/lang/String;

.field public mOriginInfo:Ljava/lang/String;

.field public mRegionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "regionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const-string/jumbo v0, "TtmlRegion"

    iput-object v0, p0, Landroid/media/TtmlRegionTag;->TAG:Ljava/lang/String;

    .line 431
    iput-object p1, p0, Landroid/media/TtmlRegionTag;->mRegionName:Ljava/lang/String;

    .line 432
    iput-object v1, p0, Landroid/media/TtmlRegionTag;->mOriginInfo:Ljava/lang/String;

    .line 433
    iput-object v1, p0, Landroid/media/TtmlRegionTag;->mExtentInfo:Ljava/lang/String;

    .line 430
    return-void
.end method

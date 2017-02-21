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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "TtmlRegion"

    iput-object v0, p0, Landroid/media/TtmlRegionTag;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/TtmlRegionTag;->mRegionName:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TtmlRegionTag;->mOriginInfo:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/TtmlRegionTag;->mExtentInfo:Ljava/lang/String;

    return-void
.end method

.class Landroid/media/MediaCodecInfo$Feature;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Feature"
.end annotation


# instance fields
.field public mDefault:Z

.field public mName:Ljava/lang/String;

.field public mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "def"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    .line 113
    iput p2, p0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    .line 114
    iput-boolean p3, p0, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    .line 111
    return-void
.end method

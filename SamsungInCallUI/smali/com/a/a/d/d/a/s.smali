.class public Lcom/a/a/d/d/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/d/a/a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/a/s$a;


# instance fields
.field private b:Lcom/a/a/d/d/a/s$a;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/a/s$a;

    invoke-direct {v0}, Lcom/a/a/d/d/a/s$a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/a/s;->a:Lcom/a/a/d/d/a/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/a/a/d/d/a/s;->a:Lcom/a/a/d/d/a/s$a;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/a/d/d/a/s;-><init>(Lcom/a/a/d/d/a/s$a;I)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/d/a/s$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/a/s;->b:Lcom/a/a/d/d/a/s$a;

    iput p2, p0, Lcom/a/a/d/d/a/s;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;Lcom/a/a/d/b/a/c;IILcom/a/a/d/a;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/a/a/d/d/a/s;->b:Lcom/a/a/d/d/a/s$a;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/s$a;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    iget v0, p0, Lcom/a/a/d/d/a/s;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/a/a/d/d/a/s;->c:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

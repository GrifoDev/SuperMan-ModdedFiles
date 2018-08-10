.class Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SelfMotionPanoramaConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodedBuffer"
.end annotation


# instance fields
.field private buffer:[B

.field private frameNo:I

.field private matrix:[F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->buffer:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->frameNo:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->matrix:[F

    return-object v0
.end method

.method public constructor <init>([BI[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->buffer:[B

    iput p2, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->frameNo:I

    iput-object p3, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->matrix:[F

    return-void
.end method

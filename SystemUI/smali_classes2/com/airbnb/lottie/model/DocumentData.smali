.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Factory;
    }
.end annotation


# instance fields
.field public color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public fontName:Ljava/lang/String;

.field justification:I

.field lineHeight:D

.field public size:I

.field public strokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public strokeOverFill:Z

.field public strokeWidth:I

.field public text:Ljava/lang/String;

.field public tracking:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V
    .locals 0
    .param p8    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    iput p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput-wide p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:I

    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int v0, v1, v4

    iget-wide v4, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int v0, v1, v4

    return v0
.end method

.class public Landroid/provider/FontsContract$FontInfo;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private final mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final mItalic:Z

.field private final mResultCode:I

.field private final mTtcIndex:I

.field private final mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/provider/FontsContract$FontInfo;->mUri:Landroid/net/Uri;

    iput p2, p0, Landroid/provider/FontsContract$FontInfo;->mTtcIndex:I

    iput-object p3, p0, Landroid/provider/FontsContract$FontInfo;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iput p4, p0, Landroid/provider/FontsContract$FontInfo;->mWeight:I

    iput-boolean p5, p0, Landroid/provider/FontsContract$FontInfo;->mItalic:Z

    iput p6, p0, Landroid/provider/FontsContract$FontInfo;->mResultCode:I

    return-void
.end method


# virtual methods
.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .locals 1

    iget-object v0, p0, Landroid/provider/FontsContract$FontInfo;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Landroid/provider/FontsContract$FontInfo;->mResultCode:I

    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    iget v0, p0, Landroid/provider/FontsContract$FontInfo;->mTtcIndex:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/provider/FontsContract$FontInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Landroid/provider/FontsContract$FontInfo;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-boolean v0, p0, Landroid/provider/FontsContract$FontInfo;->mItalic:Z

    return v0
.end method

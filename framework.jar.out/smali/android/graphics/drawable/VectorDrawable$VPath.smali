.class abstract Landroid/graphics/drawable/VectorDrawable$VPath;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mPathData:Landroid/util/PathParser$PathData;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-void

    :cond_0
    new-instance v0, Landroid/util/PathParser$PathData;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    goto :goto_0
.end method


# virtual methods
.method public getPathData()Landroid/util/PathParser$PathData;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v0, p1}, Landroid/util/PathParser$PathData;->setPathData(Landroid/util/PathParser$PathData;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v2}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap31(JJ)V

    :cond_0
    return-void
.end method

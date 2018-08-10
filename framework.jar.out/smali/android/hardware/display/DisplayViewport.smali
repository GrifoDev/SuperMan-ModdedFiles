.class public final Landroid/hardware/display/DisplayViewport;
.super Ljava/lang/Object;
.source "DisplayViewport.java"


# instance fields
.field public deviceHeight:I

.field public deviceWidth:I

.field public displayId:I

.field public final logicalFrame:Landroid/graphics/Rect;

.field public orientation:I

.field public final physicalFrame:Landroid/graphics/Rect;

.field public uniqueId:Ljava/lang/String;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayViewport;)V
    .locals 2

    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    iget v0, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/hardware/display/DisplayViewport;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/DisplayViewport;

    iget-boolean v2, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    iget-boolean v3, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v3, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget v3, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iget v3, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iget v3, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-boolean v3, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v3, :cond_0

    :goto_0
    add-int/lit8 v2, v2, 0x1f

    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public makeCopy()Landroid/hardware/display/DisplayViewport;
    .locals 1

    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DisplayViewport{valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", logicalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", physicalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

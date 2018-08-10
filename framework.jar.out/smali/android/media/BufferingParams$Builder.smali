.class public Landroid/media/BufferingParams$Builder;
.super Ljava/lang/Object;
.source "BufferingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BufferingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInitialBufferingMode:I

.field private mInitialWatermarkKB:I

.field private mInitialWatermarkMs:I

.field private mRebufferingMode:I

.field private mRebufferingWatermarkHighKB:I

.field private mRebufferingWatermarkHighMs:I

.field private mRebufferingWatermarkLowKB:I

.field private mRebufferingWatermarkLowMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    iput v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-void
.end method

.method public constructor <init>(Landroid/media/BufferingParams;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    iput v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get0(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get3(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get2(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get1(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get7(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get5(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get6(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    invoke-static {p1}, Landroid/media/BufferingParams;->-get4(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-void
.end method

.method private isSizeBasedMode(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTimeBasedMode(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/media/BufferingParams;
    .locals 4

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    invoke-direct {p0, v1}, Landroid/media/BufferingParams$Builder;->isTimeBasedMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    iget v2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal watermark:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    invoke-direct {p0, v1}, Landroid/media/BufferingParams$Builder;->isSizeBasedMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    iget v2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal watermark:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/media/BufferingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/BufferingParams;-><init>(Landroid/media/BufferingParams;)V

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set0(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set3(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set2(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set1(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set7(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set5(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set6(Landroid/media/BufferingParams;I)I

    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    invoke-static {v0, v1}, Landroid/media/BufferingParams;->-set4(Landroid/media/BufferingParams;I)I

    return-object v0
.end method

.method public setInitialBufferingMode(I)Landroid/media/BufferingParams$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal buffering mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setInitialBufferingWatermarkKB(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    return-object p0
.end method

.method public setInitialBufferingWatermarkMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    return-object p0
.end method

.method public setRebufferingMode(I)Landroid/media/BufferingParams$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal buffering mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRebufferingWatermarkHighKB(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-object p0
.end method

.method public setRebufferingWatermarkHighMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    return-object p0
.end method

.method public setRebufferingWatermarkLowKB(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    return-object p0
.end method

.method public setRebufferingWatermarkLowMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    return-object p0
.end method

.method public setRebufferingWatermarksKB(II)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    iput p2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-object p0
.end method

.method public setRebufferingWatermarksMs(II)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    iput p2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    return-object p0
.end method

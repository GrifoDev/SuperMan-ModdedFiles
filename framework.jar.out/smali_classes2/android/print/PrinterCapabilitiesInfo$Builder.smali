.class public final Landroid/print/PrinterCapabilitiesInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printerId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    return-void
.end method

.method static synthetic lambda$-android_print_PrinterCapabilitiesInfo$Builder_18342(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    return-void
.end method

.method static synthetic lambda$-android_print_PrinterCapabilitiesInfo$Builder_19452(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    return-void
.end method

.method private throwIfDefaultAlreadySpecified(I)V
    .locals 2

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Default already specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addMediaSize(Landroid/print/PrintAttributes$MediaSize;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->-set2(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v1

    aput v0, v1, v3

    :cond_1
    return-object p0
.end method

.method public addResolution(Landroid/print/PrintAttributes$Resolution;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->-set4(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v1

    aput v0, v1, v3

    :cond_1
    return-object p0
.end method

.method public build()Landroid/print/PrinterCapabilitiesInfo;
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    aget v0, v0, v1

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No default media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    aget v0, v0, v3

    if-ne v0, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No default resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get0(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    if-ne v0, v2, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No default color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get2(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v3, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;

    :cond_8
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get4(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    new-instance v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    invoke-direct {v0}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;-><init>()V

    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->-wrap0(ILjava/util/function/IntConsumer;)V

    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set0(Landroid/print/PrinterCapabilitiesInfo;I)I

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x2

    aput p2, v0, v1

    return-object p0
.end method

.method public setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    new-instance v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo$1;

    invoke-direct {v0}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo$1;-><init>()V

    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->-wrap0(ILjava/util/function/IntConsumer;)V

    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set1(Landroid/print/PrinterCapabilitiesInfo;I)I

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x3

    aput p2, v0, v1

    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set3(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;

    return-object p0
.end method

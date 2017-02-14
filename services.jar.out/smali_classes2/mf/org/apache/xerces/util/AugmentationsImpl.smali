.class public Lmf/org/apache/xerces/util/AugmentationsImpl;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/Augmentations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;,
        Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;,
        Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;
    }
.end annotation


# instance fields
.field private fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl$SmallContainer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->getItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->expand()Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->clear()V

    return-void
.end method

.method public removeItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->removeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

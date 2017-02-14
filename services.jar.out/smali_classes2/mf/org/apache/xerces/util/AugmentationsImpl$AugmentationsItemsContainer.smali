.class abstract Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AugmentationsItemsContainer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract expand()Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.end method

.method public abstract getItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isFull()Z
.end method

.method public abstract keys()Ljava/util/Enumeration;
.end method

.method public abstract putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract removeItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method

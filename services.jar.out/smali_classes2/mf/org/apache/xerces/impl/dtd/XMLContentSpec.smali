.class public Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
.super Ljava/lang/Object;
.source "XMLContentSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;
    }
.end annotation


# static fields
.field public static final CONTENTSPECNODE_ANY:S = 0x6s

.field public static final CONTENTSPECNODE_ANY_LAX:S = 0x16s

.field public static final CONTENTSPECNODE_ANY_LOCAL:S = 0x8s

.field public static final CONTENTSPECNODE_ANY_LOCAL_LAX:S = 0x18s

.field public static final CONTENTSPECNODE_ANY_LOCAL_SKIP:S = 0x28s

.field public static final CONTENTSPECNODE_ANY_OTHER:S = 0x7s

.field public static final CONTENTSPECNODE_ANY_OTHER_LAX:S = 0x17s

.field public static final CONTENTSPECNODE_ANY_OTHER_SKIP:S = 0x27s

.field public static final CONTENTSPECNODE_ANY_SKIP:S = 0x26s

.field public static final CONTENTSPECNODE_CHOICE:S = 0x4s

.field public static final CONTENTSPECNODE_LEAF:S = 0x0s

.field public static final CONTENTSPECNODE_ONE_OR_MORE:S = 0x3s

.field public static final CONTENTSPECNODE_SEQ:S = 0x5s

.field public static final CONTENTSPECNODE_ZERO_OR_MORE:S = 0x2s

.field public static final CONTENTSPECNODE_ZERO_OR_ONE:S = 0x1s


# instance fields
.field public otherValue:Ljava/lang/Object;

.field public type:S

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->clear()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-short v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V
    .locals 1

    invoke-interface {p1, p2, p0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->clear()V

    goto :goto_0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 1

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    return-void
.end method

.method public setValues(SLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    return-void
.end method

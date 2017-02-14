.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1


# instance fields
.field private icuIterator:Landroid/icu/text/CollationElementIterator;


# direct methods
.method constructor <init>(Landroid/icu/text/CollationElementIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    return-void
.end method

.method public static final primaryOrder(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final secondaryOrder(I)S
    .locals 1

    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final tertiaryOrder(I)S
    .locals 1

    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getMaxExpansion(I)I
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    return-void
.end method

.method public setOffset(I)V
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1

    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

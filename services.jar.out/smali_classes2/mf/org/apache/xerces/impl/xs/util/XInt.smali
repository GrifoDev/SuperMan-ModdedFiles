.class public final Lmf/org/apache/xerces/impl/xs/util/XInt;
.super Ljava/lang/Object;
.source "XInt.java"


# instance fields
.field private final fValue:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/util/XInt;->fValue:I

    return-void
.end method


# virtual methods
.method public final equals(Lmf/org/apache/xerces/impl/xs/util/XInt;)Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XInt;->fValue:I

    iget v1, p1, Lmf/org/apache/xerces/impl/xs/util/XInt;->fValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final intValue()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XInt;->fValue:I

    return v0
.end method

.method public final shortValue()S
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XInt;->fValue:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XInt;->fValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

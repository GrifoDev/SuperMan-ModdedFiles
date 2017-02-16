.class public Ljava/util/IllegalFormatPrecisionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatPrecisionException.java"


# static fields
.field private static final serialVersionUID:J = 0x11d81e0L


# instance fields
.field private p:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 48
    iput p1, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    .line 47
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    return v0
.end method

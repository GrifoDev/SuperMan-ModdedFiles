.class public Ljava/io/OptionalDataException;
.super Ljava/io/ObjectStreamException;
.source "OptionalDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x6f2d38e4604bc55cL


# instance fields
.field public eof:Z

.field public length:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/OptionalDataException;->eof:Z

    iput p1, p0, Ljava/io/OptionalDataException;->length:I

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/OptionalDataException;->length:I

    iput-boolean p1, p0, Ljava/io/OptionalDataException;->eof:Z

    return-void
.end method

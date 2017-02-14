.class public Lmf/org/apache/xerces/stax/ImmutableLocation;
.super Ljava/lang/Object;
.source "ImmutableLocation.java"

# interfaces
.implements Lmf/javax/xml/stream/Location;


# instance fields
.field private final fCharacterOffset:I

.field private final fColumnNumber:I

.field private final fLineNumber:I

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fCharacterOffset:I

    iput p2, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fColumnNumber:I

    iput p3, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fLineNumber:I

    iput-object p4, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fPublicId:Ljava/lang/String;

    iput-object p5, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/Location;)V
    .locals 6

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v1

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v2

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/stax/ImmutableLocation;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fCharacterOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fColumnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fLineNumber:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.class public Ljava/beans/IndexedPropertyChangeEvent;
.super Ljava/beans/PropertyChangeEvent;
.source "IndexedPropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x471ad2af2ec1996L


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .param p5, "index"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iput p5, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    .line 60
    return-void
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 76
    const-string/jumbo v0, "; index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/beans/IndexedPropertyChangeEvent;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    return v0
.end method

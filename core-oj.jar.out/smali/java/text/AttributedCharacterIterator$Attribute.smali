.class public Ljava/text/AttributedCharacterIterator$Attribute;
.super Ljava/lang/Object;
.source "AttributedCharacterIterator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedCharacterIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# static fields
.field public static final INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

.field public static final LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

.field public static final READING:Ljava/text/AttributedCharacterIterator$Attribute;

.field private static final instanceMap:Ljava/util/Map;

.field private static final serialVersionUID:J = -0x7ee18bd932b8e8a4L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const-string/jumbo v1, "language"

    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const-string/jumbo v1, "reading"

    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->READING:Ljava/text/AttributedCharacterIterator$Attribute;

    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const-string/jumbo v1, "input_method_segment"

    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/AttributedCharacterIterator$Attribute;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/text/AttributedCharacterIterator$Attribute;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

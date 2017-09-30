.class Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;
.super Ljava/io/ObjectInputStream$GetField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGetField"
.end annotation


# instance fields
.field private fields:Ljava/util/Map;

.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->this$0:Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->fields:Ljava/util/Map;

    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;B)B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->defaulted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

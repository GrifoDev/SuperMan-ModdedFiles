.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final name:Ljava/lang/String;

.field private offset:I

.field private final signature:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectStreamField;->offset:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    invoke-static {p2}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/io/ObjectStreamField;->offset:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    iput-object v2, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    :goto_0
    return-void

    :sswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_8
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x4c -> :sswitch_8
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
        0x5b -> :sswitch_8
    .end sparse-switch
.end method

.method constructor <init>(Ljava/lang/reflect/Field;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/ObjectStreamField;->offset:I

    iput-object p1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    iput-boolean p2, p0, Ljava/io/ObjectStreamField;->unshared:Z

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    invoke-static {v0}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    return-void

    :cond_1
    const-class v1, Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    :cond_a
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    move-object v1, p1

    check-cast v1, Ljava/io/ObjectStreamField;

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v0

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeCode()C
    .locals 2

    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUnshared()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method protected setOffset(I)V
    .locals 0

    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

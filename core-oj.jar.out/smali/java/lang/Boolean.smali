.class public final Ljava/lang/Boolean;
.super Ljava/lang/Object;
.source "Boolean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/Boolean;

.field public static final TRUE:Ljava/lang/Boolean;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x32df8d7f2a630512L


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    const-class v0, [Z

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Ljava/lang/Boolean;->value:Z

    .line 87
    return-void
.end method

.method public static compare(ZZ)I
    .locals 1
    .param p0, "x"    # Z
    .param p1, "y"    # Z

    .prologue
    .line 289
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v2, 0x0

    .line 251
    .local v2, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->toBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 255
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 252
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 212
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static logicalAnd(ZZ)Z
    .locals 0
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 307
    if-eqz p0, :cond_0

    .end local p1    # "b":Z
    :goto_0
    return p1

    .restart local p1    # "b":Z
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static logicalOr(ZZ)Z
    .locals 0
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 321
    if-nez p0, :cond_0

    .end local p1    # "b":Z
    :goto_0
    return p1

    .restart local p1    # "b":Z
    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static logicalXor(ZZ)Z
    .locals 1
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 335
    xor-int v0, p0, p1

    return v0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0}, Ljava/lang/Boolean;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 177
    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Ljava/lang/Boolean;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 150
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    return v0
.end method

.method public compareTo(Ljava/lang/Boolean;)I
    .locals 2
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 271
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    iget-boolean v1, p1, Ljava/lang/Boolean;->value:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 270
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 225
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 226
    iget-boolean v1, p0, Ljava/lang/Boolean;->value:Z

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 228
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

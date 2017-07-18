.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final ABSTRACT:I = 0x400

.field static final ANNOTATION:I = 0x2000

.field static final BRIDGE:I = 0x40

.field private static final CLASS_MODIFIERS:I = 0xc1f

.field public static final CONSTRUCTOR:I = 0x10000

.field private static final CONSTRUCTOR_MODIFIERS:I = 0x7

.field public static final DEFAULT:I = 0x400000

.field static final ENUM:I = 0x4000

.field private static final FIELD_MODIFIERS:I = 0xdf

.field public static final FINAL:I = 0x10

.field public static final INTERFACE:I = 0x200

.field private static final INTERFACE_MODIFIERS:I = 0xc0f

.field private static final METHOD_MODIFIERS:I = 0xd3f

.field public static final NATIVE:I = 0x100

.field public static final PRIVATE:I = 0x2

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x8

.field public static final STRICT:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field public static final SYNTHETIC:I = 0x1000

.field public static final TRANSIENT:I = 0x80

.field static final VARARGS:I = 0x80

.field public static final VOLATILE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classModifiers()I
    .locals 1

    const/16 v0, 0xc1f

    return v0
.end method

.method public static constructorModifiers()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public static fieldModifiers()I
    .locals 1

    const/16 v0, 0xdf

    return v0
.end method

.method public static interfaceModifiers()I
    .locals 1

    const/16 v0, 0xc0f

    return v0
.end method

.method public static isAbstract(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isConstructor(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFinal(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInterface(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNative(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPrivate(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isProtected(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPublic(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isStatic(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isStrict(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSynchronized(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isSynthetic(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTransient(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVolatile(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static methodModifiers()I
    .locals 1

    const/16 v0, 0xd3f

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "public "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_1

    const-string/jumbo v2, "protected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "private "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_3

    const-string/jumbo v2, "abstract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_4

    const-string/jumbo v2, "static "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_5

    const-string/jumbo v2, "final "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_6

    const-string/jumbo v2, "transient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_7

    const-string/jumbo v2, "volatile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_8

    const-string/jumbo v2, "synchronized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_9

    const-string/jumbo v2, "native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_a

    const-string/jumbo v2, "strictfp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_b

    const-string/jumbo v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_c
    const-string/jumbo v2, ""

    return-object v2
.end method

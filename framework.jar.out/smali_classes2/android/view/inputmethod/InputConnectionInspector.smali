.class public final Landroid/view/inputmethod/InputConnectionInspector;
.super Ljava/lang/Object;
.source "InputConnectionInspector.java"


# static fields
.field private static final sMissingMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/inputmethod/InputConnectionWrapper;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "getSelectedText(int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "setComposingRegion(int, int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v2, "commitCorrection(CorrectionInfo)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_4
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v2, "requestCursorUpdate(int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_6
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_8

    if-nez v0, :cond_7

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v2, "deleteSurroundingTextInCodePoints(int, int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_8
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_a

    if-nez v0, :cond_9

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string/jumbo v2, "getHandler()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_c

    if-nez v0, :cond_b

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string/jumbo v2, "closeConnection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_e

    if-nez v0, :cond_d

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string/jumbo v2, "commitContent(InputContentInfo, Bundle)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .locals 4

    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    :cond_4
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    or-int/lit8 v1, v1, 0x10

    :cond_5
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    or-int/lit8 v1, v1, 0x20

    :cond_6
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    or-int/lit8 v1, v1, 0x40

    :cond_7
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitContent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    or-int/lit16 v1, v1, 0x80

    :cond_8
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v2, "closeConnection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v4
.end method

.method private static hasCommitContent(Ljava/lang/Class;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v2, "commitContent"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/InputContentInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v2, "commitCorrection"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/CorrectionInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v2, "deleteSurroundingTextInCodePoints"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v2, "getHandler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v4
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v2, "getSelectedText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v2, "requestCursorUpdates"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v2, "setComposingRegion"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

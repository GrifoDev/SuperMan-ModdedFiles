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

    .prologue
    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .locals 2
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 89
    return v1

    .line 92
    :cond_0
    instance-of v0, p0, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_1

    .line 93
    return v1

    .line 96
    :cond_1
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v0, :cond_2

    .line 97
    check-cast p0, Landroid/view/inputmethod/InputConnectionWrapper;

    .end local p0    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    move-result v0

    return v0

    .line 99
    .restart local p0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 201
    .local v0, "isEmpty":Z
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 202
    const-string/jumbo v2, "getSelectedText(int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const/4 v0, 0x0

    .line 205
    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    .line 206
    if-nez v0, :cond_1

    .line 207
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    const-string/jumbo v2, "setComposingRegion(int, int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/4 v0, 0x0

    .line 212
    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_4

    .line 213
    if-nez v0, :cond_3

    .line 214
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_3
    const-string/jumbo v2, "commitCorrection(CorrectionInfo)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v0, 0x0

    .line 219
    :cond_4
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_6

    .line 220
    if-nez v0, :cond_5

    .line 221
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_5
    const-string/jumbo v2, "requestCursorUpdate(int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/4 v0, 0x0

    .line 226
    :cond_6
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_8

    .line 227
    if-nez v0, :cond_7

    .line 228
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_7
    const-string/jumbo v2, "deleteSurroundingTextInCodePoints(int, int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v0, 0x0

    .line 233
    :cond_8
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_a

    .line 234
    if-nez v0, :cond_9

    .line 235
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_9
    const-string/jumbo v2, "getHandler()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_a
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_c

    .line 240
    if-nez v0, :cond_b

    .line 241
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_b
    const-string/jumbo v2, "closeConnection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 104
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, "cachedFlags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "flags":I
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const/4 v1, 0x1

    .line 112
    :cond_1
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    or-int/lit8 v1, v1, 0x2

    .line 115
    :cond_2
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    or-int/lit8 v1, v1, 0x4

    .line 118
    :cond_3
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 119
    or-int/lit8 v1, v1, 0x8

    .line 121
    :cond_4
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 122
    or-int/lit8 v1, v1, 0x10

    .line 124
    :cond_5
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 125
    or-int/lit8 v1, v1, 0x20

    .line 127
    :cond_6
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 128
    or-int/lit8 v1, v1, 0x40

    .line 130
    :cond_7
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 191
    :try_start_0
    const-string/jumbo v3, "closeConnection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 192
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    :try_start_0
    const-string/jumbo v4, "commitCorrection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/inputmethod/CorrectionInfo;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 156
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    :try_start_0
    const-string/jumbo v4, "deleteSurroundingTextInCodePoints"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 173
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 172
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 175
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 182
    :try_start_0
    const-string/jumbo v3, "getHandler"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 183
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    :try_start_0
    const-string/jumbo v4, "getSelectedText"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 138
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    :try_start_0
    const-string/jumbo v4, "requestCursorUpdates"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 164
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 165
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    :try_start_0
    const-string/jumbo v4, "setComposingRegion"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 146
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 147
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

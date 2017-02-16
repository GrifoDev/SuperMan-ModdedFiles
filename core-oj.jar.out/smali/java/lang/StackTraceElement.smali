.class public final Ljava/lang/StackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6109c59a2636dd85L


# instance fields
.field private declaringClass:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private lineNumber:I

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, "Declaring class is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "Method name is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    .line 74
    iput p4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 199
    if-ne p1, p0, :cond_0

    .line 200
    const/4 v1, 0x1

    return v1

    .line 201
    :cond_0
    instance-of v2, p1, Ljava/lang/StackTraceElement;

    if-nez v2, :cond_1

    .line 202
    return v1

    :cond_1
    move-object v0, p1

    .line 203
    check-cast v0, Ljava/lang/StackTraceElement;

    .line 204
    .local v0, "e":Ljava/lang/StackTraceElement;
    iget-object v2, v0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    iget-object v3, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    iget v2, v0, Ljava/lang/StackTraceElement;->lineNumber:I

    iget v3, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    if-ne v2, v3, :cond_2

    .line 206
    iget-object v2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    iget-object v3, v0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 204
    if-eqz v2, :cond_2

    .line 207
    iget-object v1, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    iget-object v2, v0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 204
    :cond_2
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 215
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 216
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    add-int v0, v1, v2

    .line 217
    return v0
.end method

.method public isNativeMethod()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "(Native Method)"

    .line 172
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    if-ltz v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "(Unknown Source)"

    goto :goto_0
.end method

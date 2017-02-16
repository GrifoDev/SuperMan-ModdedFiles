.class public Ljava/lang/ClassNotFoundException;
.super Ljava/lang/ReflectiveOperationException;
.source "ClassNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x7f5acd663ed4208eL


# instance fields
.field private ex:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iput-object p2, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    .line 94
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-object v0
.end method

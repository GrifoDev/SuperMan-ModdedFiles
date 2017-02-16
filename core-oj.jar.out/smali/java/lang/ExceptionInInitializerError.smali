.class public Ljava/lang/ExceptionInInitializerError;
.super Ljava/lang/LinkageError;
.source "ExceptionInInitializerError.java"


# static fields
.field private static final serialVersionUID:J = 0x151e34d009a19380L


# instance fields
.field private exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 80
    iput-object p1, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    .line 78
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

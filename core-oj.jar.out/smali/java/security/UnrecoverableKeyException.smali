.class public Ljava/security/UnrecoverableKeyException;
.super Ljava/security/UnrecoverableEntryException;
.source "UnrecoverableKeyException.java"


# static fields
.field private static final serialVersionUID:J = 0x64f637531e15766dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/security/UnrecoverableEntryException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

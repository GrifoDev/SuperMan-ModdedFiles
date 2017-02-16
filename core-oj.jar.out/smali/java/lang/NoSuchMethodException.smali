.class public Ljava/lang/NoSuchMethodException;
.super Ljava/lang/ReflectiveOperationException;
.source "NoSuchMethodException.java"


# static fields
.field private static final serialVersionUID:J = 0x45ddbd9e5ec605dbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.class public Lcom/thoughtworks/xstream/security/ForbiddenClassException;
.super Lcom/thoughtworks/xstream/XStreamException;
.source "ForbiddenClassException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 25
    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

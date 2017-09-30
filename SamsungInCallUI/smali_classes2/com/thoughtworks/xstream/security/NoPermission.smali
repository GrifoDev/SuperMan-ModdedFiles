.class public Lcom/thoughtworks/xstream/security/NoPermission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field private final permission:Lcom/thoughtworks/xstream/security/TypePermission;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/security/NoPermission;->permission:Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/security/NoPermission;->permission:Lcom/thoughtworks/xstream/security/TypePermission;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/security/NoPermission;->permission:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/security/TypePermission;->allows(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/security/ForbiddenClassException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ForbiddenClassException;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

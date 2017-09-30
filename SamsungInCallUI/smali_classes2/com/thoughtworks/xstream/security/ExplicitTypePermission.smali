.class public Lcom/thoughtworks/xstream/security/ExplicitTypePermission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field final names:Ljava/util/Set;


# direct methods
.method public constructor <init>([Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;-><init>([Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->getNames()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;->names:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;->names:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

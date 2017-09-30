.class public Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

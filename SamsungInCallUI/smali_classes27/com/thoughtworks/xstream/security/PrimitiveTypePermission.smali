.class public Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;
.super Ljava/lang/Object;
.source "PrimitiveTypePermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# static fields
.field public static final PRIMITIVES:Lcom/thoughtworks/xstream/security/TypePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->PRIMITIVES:Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Primitives;->isBoxed(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

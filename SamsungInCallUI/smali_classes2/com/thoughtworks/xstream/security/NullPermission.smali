.class public Lcom/thoughtworks/xstream/security/NullPermission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# static fields
.field public static final NULL:Lcom/thoughtworks/xstream/security/TypePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/NullPermission;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/security/NullPermission;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/security/NullPermission;->NULL:Lcom/thoughtworks/xstream/security/TypePermission;

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

    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

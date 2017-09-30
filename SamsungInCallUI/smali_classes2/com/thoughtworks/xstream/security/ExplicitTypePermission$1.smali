.class Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$types:[Ljava/lang/Class;


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNames()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

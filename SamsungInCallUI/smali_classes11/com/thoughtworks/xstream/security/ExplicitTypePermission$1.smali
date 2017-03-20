.class Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;
.super Ljava/lang/Object;
.source "ExplicitTypePermission.java"


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

    .prologue
    .line 29
    iput-object p1, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 32
    const/4 v1, 0x0

    .line 36
    :cond_0
    return-object v1

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 34
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission$1;->val$types:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

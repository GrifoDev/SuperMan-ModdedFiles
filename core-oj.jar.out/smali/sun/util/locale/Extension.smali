.class Lsun/util/locale/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field private id:Ljava/lang/String;

.field private final key:C

.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(C)V
    .locals 0
    .param p1, "key"    # C

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-char p1, p0, Lsun/util/locale/Extension;->key:C

    .line 39
    return-void
.end method

.method constructor <init>(CLjava/lang/String;)V
    .locals 0
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-char p1, p0, Lsun/util/locale/Extension;->key:C

    .line 45
    invoke-virtual {p0, p2}, Lsun/util/locale/Extension;->setValue(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lsun/util/locale/Extension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()C
    .locals 1

    .prologue
    .line 54
    iget-char v0, p0, Lsun/util/locale/Extension;->key:C

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lsun/util/locale/Extension;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lsun/util/locale/Extension;->value:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lsun/util/locale/Extension;->key:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/Extension;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lsun/util/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/contacts/common/model/account/AccountType$EditType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditType"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->a:I

    iput p2, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->c:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v1, p1, Lcom/android/contacts/common/model/account/AccountType$EditType;->a:I

    iget v2, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rawValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " labelRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " specificMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " customColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditType;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

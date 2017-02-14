.class final Lmf/org/apache/xerces/util/XMLErrorCode;
.super Ljava/lang/Object;
.source "XMLErrorCode.java"


# instance fields
.field private fDomain:Ljava/lang/String;

.field private fKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lmf/org/apache/xerces/util/XMLErrorCode;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/util/XMLErrorCode;

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method

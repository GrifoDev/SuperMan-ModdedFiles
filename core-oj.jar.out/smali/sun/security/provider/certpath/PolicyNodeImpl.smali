.class final Lsun/security/provider/certpath/PolicyNodeImpl;
.super Ljava/lang/Object;
.source "PolicyNodeImpl.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# static fields
.field private static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"


# instance fields
.field private isImmutable:Z

.field private mChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCriticalityIndicator:Z

.field private mDepth:I

.field private mExpectedPolicySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalExpectedPolicySet:Z

.field private mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private mQualifierSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPolicy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    iput-object p1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    :goto_1
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    if-eqz p5, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    :goto_2
    if-eqz p6, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V

    :goto_4
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    iput v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    goto :goto_4
.end method

.method constructor <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 7

    iget-object v2, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    iget-object v3, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    iget-boolean v4, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    iget-object v5, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    return-void
.end method

.method private addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 2

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 4

    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p1, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getPolicyNodes(ILjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;)V"
        }
    .end annotation

    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ne v2, p1, :cond_1

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    goto :goto_0
.end method

.method private getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ge v3, p1, :cond_0

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static policyToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.5.29.32.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "anyPolicy"

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method addExpectedPolicy(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method asString()Ljava/lang/String;
    .locals 6

    iget-object v5, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v5, :cond_0

    const-string/jumbo v5, "anyPolicy  ROOT\n"

    return-object v5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "  CRIT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "  EP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method deleteChild(Ljava/security/cert/PolicyNode;)V
    .locals 2

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    return-object v0
.end method

.method getPolicyNodes(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    return-object v0
.end method

.method getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "2.5.29.32.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ge v3, p1, :cond_0

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v2
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public isCritical()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    return v0
.end method

.method isImmutable()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    return v0
.end method

.method prune(I)V
    .locals 4

    iget-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "PolicyNode is immutable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    iget-object v2, v1, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    add-int/lit8 v2, v2, 0x1

    if-le p1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method setImmutable()V
    .locals 3

    iget-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

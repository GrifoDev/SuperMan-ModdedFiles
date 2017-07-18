.class final Ljavax/security/auth/Subject$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljavax/security/auth/Subject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acc:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Ljava/security/AccessControlContext;)V
    .locals 0

    iput-object p1, p0, Ljavax/security/auth/Subject$1;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljavax/security/auth/Subject$1;->run()Ljavax/security/auth/Subject;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljavax/security/auth/Subject;
    .locals 3

    iget-object v2, p0, Ljavax/security/auth/Subject$1;->val$acc:Ljava/security/AccessControlContext;

    invoke-virtual {v2}, Ljava/security/AccessControlContext;->getDomainCombiner()Ljava/security/DomainCombiner;

    move-result-object v0

    instance-of v2, v0, Ljavax/security/auth/SubjectDomainCombiner;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    move-object v1, v0

    nop

    nop

    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v2

    return-object v2
.end method

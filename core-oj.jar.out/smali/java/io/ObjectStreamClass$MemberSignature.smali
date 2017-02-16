.class Ljava/io/ObjectStreamClass$MemberSignature;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemberSignature"
.end annotation


# instance fields
.field public final member:Ljava/lang/reflect/Member;

.field public final name:Ljava/lang/String;

.field public final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 2
    .param p1, "cons"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 1839
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 1841
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 1840
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->-wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 1837
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 1833
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 1834
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-wrap2(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 1831
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "meth"    # Ljava/lang/reflect/Method;

    .prologue
    .line 1844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1845
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 1846
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 1848
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 1847
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->-wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 1844
    return-void
.end method

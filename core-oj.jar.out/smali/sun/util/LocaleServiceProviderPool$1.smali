.class Lsun/util/LocaleServiceProviderPool$1;
.super Ljava/lang/Object;
.source "LocaleServiceProviderPool.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/util/LocaleServiceProviderPool;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/util/LocaleServiceProviderPool;

.field final synthetic val$c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lsun/util/LocaleServiceProviderPool;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lsun/util/LocaleServiceProviderPool$1;->this$0:Lsun/util/LocaleServiceProviderPool;

    iput-object p2, p0, Lsun/util/LocaleServiceProviderPool$1;->val$c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    iget-object v2, p0, Lsun/util/LocaleServiceProviderPool$1;->val$c:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/ServiceLoader;->loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/spi/LocaleServiceProvider;

    iget-object v2, p0, Lsun/util/LocaleServiceProviderPool$1;->this$0:Lsun/util/LocaleServiceProviderPool;

    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->-get0(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

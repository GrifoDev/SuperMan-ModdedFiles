.class public Ljavax/net/ssl/KeyStoreBuilderParameters;
.super Ljava/lang/Object;
.source "KeyStoreBuilderParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore$Builder;)V
    .locals 1
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$Builder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->parameters:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->parameters:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->parameters:Ljava/util/List;

    return-object v0
.end method

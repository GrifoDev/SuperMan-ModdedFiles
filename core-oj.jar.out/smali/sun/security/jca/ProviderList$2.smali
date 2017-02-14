.class Lsun/security/jca/ProviderList$2;
.super Ljava/util/AbstractList;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/jca/ProviderList;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderList;)V
    .locals 0

    iput-object p1, p0, Lsun/security/jca/ProviderList$2;->this$0:Lsun/security/jca/ProviderList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList$2;->get(I)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lsun/security/jca/ProviderList$2;->this$0:Lsun/security/jca/ProviderList;

    invoke-virtual {v0, p1}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lsun/security/jca/ProviderList$2;->this$0:Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/ProviderList;->-get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

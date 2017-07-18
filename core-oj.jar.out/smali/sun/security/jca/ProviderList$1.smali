.class final Lsun/security/jca/ProviderList$1;
.super Ljava/security/Provider;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.class Landroid/security/net/config/NetworkSecurityConfig$1;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/security/net/config/CertificatesEntryRef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method constructor <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 0

    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$1;->this$0:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/security/net/config/CertificatesEntryRef;Landroid/security/net/config/CertificatesEntryRef;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/security/net/config/CertificatesEntryRef;

    check-cast p2, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/NetworkSecurityConfig$1;->compare(Landroid/security/net/config/CertificatesEntryRef;Landroid/security/net/config/CertificatesEntryRef;)I

    move-result v0

    return v0
.end method

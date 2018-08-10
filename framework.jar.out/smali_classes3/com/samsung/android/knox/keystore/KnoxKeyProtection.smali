.class public final Lcom/samsung/android/knox/keystore/KnoxKeyProtection;
.super Ljava/lang/Object;
.source "KnoxKeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final mAccessorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyProtection:Landroid/security/keystore/KeyProtection;

.field private final mKnoxObjectProtectionRequired:Z


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/keystore/KeyProtection;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKeyProtection:Landroid/security/keystore/KeyProtection;

    iput-boolean p2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKnoxObjectProtectionRequired:Z

    iput-object p3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAccessorIds:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAdministratorIds:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/keystore/KnoxKeyProtection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;-><init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAccessorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAccessorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdministratorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mAdministratorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProtection()Landroid/security/keystore/KeyProtection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKeyProtection:Landroid/security/keystore/KeyProtection;

    return-object v0
.end method

.method public isKnoxObjectProtectionRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->mKnoxObjectProtectionRequired:Z

    return v0
.end method

.class Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/ObjectIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HugeOidNotSupportedByOldJDK"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field static theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    invoke-direct {v0}, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;-><init>()V

    sput-object v0, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;->theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    .line 133
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

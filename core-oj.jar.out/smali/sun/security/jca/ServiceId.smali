.class public final Lsun/security/jca/ServiceId;
.super Ljava/lang/Object;
.source "ServiceId.java"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/jca/ServiceId;->type:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/jca/ServiceId;->algorithm:Ljava/lang/String;

    return-void
.end method

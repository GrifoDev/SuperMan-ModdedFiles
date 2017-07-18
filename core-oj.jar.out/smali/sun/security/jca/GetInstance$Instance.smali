.class public final Lsun/security/jca/GetInstance$Instance;
.super Ljava/lang/Object;
.source "GetInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/GetInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instance"
.end annotation


# instance fields
.field public final impl:Ljava/lang/Object;

.field public final provider:Ljava/security/Provider;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object p2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance$Instance;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

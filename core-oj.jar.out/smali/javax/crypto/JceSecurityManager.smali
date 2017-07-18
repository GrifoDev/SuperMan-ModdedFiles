.class final Ljavax/crypto/JceSecurityManager;
.super Ljava/lang/SecurityManager;
.source "JceSecurityManager.java"


# static fields
.field static final INSTANCE:Ljavax/crypto/JceSecurityManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method getCryptoPermission(Ljava/lang/String;)Ljavax/crypto/CryptoPermission;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

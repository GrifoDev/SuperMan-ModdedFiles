.class public Ljavax/crypto/BadPaddingException;
.super Ljava/security/GeneralSecurityException;
.source "BadPaddingException.java"


# static fields
.field private static final serialVersionUID:J = -0x49c2cb2a941ef57bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

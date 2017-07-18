.class public final Ljavax/crypto/spec/PSource$PSpecified;
.super Ljavax/crypto/spec/PSource;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/spec/PSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PSpecified"
.end annotation


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;


# instance fields
.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string/jumbo v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

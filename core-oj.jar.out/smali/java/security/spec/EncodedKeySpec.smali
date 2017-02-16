.class public abstract Ljava/security/spec/EncodedKeySpec;
.super Ljava/lang/Object;
.source "EncodedKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private encodedKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "encodedKey"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    .line 55
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

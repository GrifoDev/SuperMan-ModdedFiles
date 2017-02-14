.class public interface abstract Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final REFERENCE_TYPE:I = 0x2

.field public static final VALUE_TYPE:I = 0x1


# virtual methods
.method public abstract getCipherReference()Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
.end method

.method public abstract getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
.end method

.method public abstract getDataType()I
.end method

.method public abstract setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation
.end method

.method public abstract setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation
.end method

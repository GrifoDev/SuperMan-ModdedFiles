.class public interface abstract Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract addAgreementMethodInformation(Lorg/w3c/dom/Element;)V
.end method

.method public abstract getAgreementMethodInformation()Ljava/util/Iterator;
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getKANonce()[B
.end method

.method public abstract getOriginatorKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
.end method

.method public abstract getRecipientKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
.end method

.method public abstract revoveAgreementMethodInformation(Lorg/w3c/dom/Element;)V
.end method

.method public abstract setKANonce([B)V
.end method

.method public abstract setOriginatorKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
.end method

.method public abstract setRecipientKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
.end method

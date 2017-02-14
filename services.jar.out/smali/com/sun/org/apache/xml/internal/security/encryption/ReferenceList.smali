.class public interface abstract Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final DATA_REFERENCE:I = 0x1

.field public static final KEY_REFERENCE:I = 0x2


# virtual methods
.method public abstract add(Lcom/sun/org/apache/xml/internal/security/encryption/Reference;)V
.end method

.method public abstract getReferences()Ljava/util/Iterator;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract newDataReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/Reference;
.end method

.method public abstract newKeyReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/Reference;
.end method

.method public abstract remove(Lcom/sun/org/apache/xml/internal/security/encryption/Reference;)V
.end method

.method public abstract size()I
.end method

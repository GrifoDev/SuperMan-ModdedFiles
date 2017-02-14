.class public interface abstract Lmf/org/apache/xerces/xs/XSIDCDefinition;
.super Ljava/lang/Object;
.source "XSIDCDefinition.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSObject;


# static fields
.field public static final IC_KEY:S = 0x1s

.field public static final IC_KEYREF:S = 0x2s

.field public static final IC_UNIQUE:S = 0x3s


# virtual methods
.method public abstract getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getCategory()S
.end method

.method public abstract getFieldStrs()Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract getRefKey()Lmf/org/apache/xerces/xs/XSIDCDefinition;
.end method

.method public abstract getSelectorStr()Ljava/lang/String;
.end method

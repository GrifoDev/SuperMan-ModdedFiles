.class public interface abstract Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
.super Ljava/lang/Object;
.source "XMLSchemaDescription.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;


# static fields
.field public static final CONTEXT_ATTRIBUTE:S = 0x6s

.field public static final CONTEXT_ELEMENT:S = 0x5s

.field public static final CONTEXT_IMPORT:S = 0x2s

.field public static final CONTEXT_INCLUDE:S = 0x0s

.field public static final CONTEXT_INSTANCE:S = 0x4s

.field public static final CONTEXT_PREPARSE:S = 0x3s

.field public static final CONTEXT_REDEFINE:S = 0x1s

.field public static final CONTEXT_XSITYPE:S = 0x7s


# virtual methods
.method public abstract getAttributes()Lmf/org/apache/xerces/xni/XMLAttributes;
.end method

.method public abstract getContextType()S
.end method

.method public abstract getEnclosingElementName()Lmf/org/apache/xerces/xni/QName;
.end method

.method public abstract getLocationHints()[Ljava/lang/String;
.end method

.method public abstract getTargetNamespace()Ljava/lang/String;
.end method

.method public abstract getTriggeringComponent()Lmf/org/apache/xerces/xni/QName;
.end method

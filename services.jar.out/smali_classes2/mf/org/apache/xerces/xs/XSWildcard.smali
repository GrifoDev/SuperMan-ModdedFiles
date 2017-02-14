.class public interface abstract Lmf/org/apache/xerces/xs/XSWildcard;
.super Ljava/lang/Object;
.source "XSWildcard.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSTerm;


# static fields
.field public static final NSCONSTRAINT_ANY:S = 0x1s

.field public static final NSCONSTRAINT_LIST:S = 0x3s

.field public static final NSCONSTRAINT_NOT:S = 0x2s

.field public static final PC_LAX:S = 0x3s

.field public static final PC_SKIP:S = 0x2s

.field public static final PC_STRICT:S = 0x1s


# virtual methods
.method public abstract getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
.end method

.method public abstract getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getNsConstraintList()Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract getProcessContents()S
.end method

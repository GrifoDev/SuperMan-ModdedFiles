.class public interface abstract Lmf/org/apache/xerces/xs/XSModelGroup;
.super Ljava/lang/Object;
.source "XSModelGroup.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSTerm;


# static fields
.field public static final COMPOSITOR_ALL:S = 0x3s

.field public static final COMPOSITOR_CHOICE:S = 0x2s

.field public static final COMPOSITOR_SEQUENCE:S = 0x1s


# virtual methods
.method public abstract getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
.end method

.method public abstract getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getCompositor()S
.end method

.method public abstract getParticles()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

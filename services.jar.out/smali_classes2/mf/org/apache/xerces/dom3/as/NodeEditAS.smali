.class public interface abstract Lmf/org/apache/xerces/dom3/as/NodeEditAS;
.super Ljava/lang/Object;
.source "NodeEditAS.java"


# static fields
.field public static final NS_WF_CHECK:S = 0x2s

.field public static final PARTIAL_VALIDITY_CHECK:S = 0x3s

.field public static final STRICT_VALIDITY_CHECK:S = 0x4s

.field public static final WF_CHECK:S = 0x1s


# virtual methods
.method public abstract canAppendChild(Lmf/org/w3c/dom/Node;)Z
.end method

.method public abstract canInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
.end method

.method public abstract canRemoveChild(Lmf/org/w3c/dom/Node;)Z
.end method

.method public abstract canReplaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
.end method

.method public abstract isNodeValid(ZS)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method

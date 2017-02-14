.class public Lmf/org/apache/xerces/dom/events/MutationEventImpl;
.super Lmf/org/apache/xerces/dom/events/EventImpl;
.source "MutationEventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/MutationEvent;


# static fields
.field public static final DOM_ATTR_MODIFIED:Ljava/lang/String; = "DOMAttrModified"

.field public static final DOM_CHARACTER_DATA_MODIFIED:Ljava/lang/String; = "DOMCharacterDataModified"

.field public static final DOM_NODE_INSERTED:Ljava/lang/String; = "DOMNodeInserted"

.field public static final DOM_NODE_INSERTED_INTO_DOCUMENT:Ljava/lang/String; = "DOMNodeInsertedIntoDocument"

.field public static final DOM_NODE_REMOVED:Ljava/lang/String; = "DOMNodeRemoved"

.field public static final DOM_NODE_REMOVED_FROM_DOCUMENT:Ljava/lang/String; = "DOMNodeRemovedFromDocument"

.field public static final DOM_SUBTREE_MODIFIED:Ljava/lang/String; = "DOMSubtreeModified"


# instance fields
.field public attrChange:S

.field attrName:Ljava/lang/String;

.field newValue:Ljava/lang/String;

.field prevValue:Ljava/lang/String;

.field relatedNode:Lmf/org/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/events/EventImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->relatedNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttrChange()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->attrChange:S

    return v0
.end method

.method public getAttrName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedNode()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->relatedNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1

    iput-object p4, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->relatedNode:Lmf/org/w3c/dom/Node;

    iput-object p5, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    iput-object p6, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    iput-object p7, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    int-to-short v0, p8

    iput-short v0, p0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->attrChange:S

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    return-void
.end method

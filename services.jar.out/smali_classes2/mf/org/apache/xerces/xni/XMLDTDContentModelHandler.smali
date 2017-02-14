.class public interface abstract Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
.super Ljava/lang/Object;
.source "XMLDTDContentModelHandler.java"


# static fields
.field public static final OCCURS_ONE_OR_MORE:S = 0x4s

.field public static final OCCURS_ZERO_OR_MORE:S = 0x3s

.field public static final OCCURS_ZERO_OR_ONE:S = 0x2s

.field public static final SEPARATOR_CHOICE:S = 0x0s

.field public static final SEPARATOR_SEQUENCE:S = 0x1s


# virtual methods
.method public abstract any(Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract empty(Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract getDTDContentModelSource()Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;
.end method

.method public abstract occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
.end method

.method public abstract startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

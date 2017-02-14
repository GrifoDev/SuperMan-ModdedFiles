.class public interface abstract Lmf/org/apache/xerces/dom3/as/ASContentModel;
.super Ljava/lang/Object;
.source "ASContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/ASObject;


# static fields
.field public static final AS_ALL:S = 0x2s

.field public static final AS_CHOICE:S = 0x1s

.field public static final AS_NONE:S = 0x3s

.field public static final AS_SEQUENCE:S = 0x0s

.field public static final AS_UNBOUNDED:I = 0x7fffffff


# virtual methods
.method public abstract appendsubModel(Lmf/org/apache/xerces/dom3/as/ASObject;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method

.method public abstract getListOperator()S
.end method

.method public abstract getMaxOccurs()I
.end method

.method public abstract getMinOccurs()I
.end method

.method public abstract getSubModels()Lmf/org/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract insertsubModel(Lmf/org/apache/xerces/dom3/as/ASObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method

.method public abstract removesubModel(Lmf/org/apache/xerces/dom3/as/ASObject;)V
.end method

.method public abstract setListOperator(S)V
.end method

.method public abstract setMaxOccurs(I)V
.end method

.method public abstract setMinOccurs(I)V
.end method

.method public abstract setSubModels(Lmf/org/apache/xerces/dom3/as/ASObjectList;)V
.end method

.class public abstract Lmf/javax/xml/validation/TypeInfoProvider;
.super Ljava/lang/Object;
.source "TypeInfoProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttributeTypeInfo(I)Lmf/org/w3c/dom/TypeInfo;
.end method

.method public abstract getElementTypeInfo()Lmf/org/w3c/dom/TypeInfo;
.end method

.method public abstract isIdAttribute(I)Z
.end method

.method public abstract isSpecified(I)Z
.end method

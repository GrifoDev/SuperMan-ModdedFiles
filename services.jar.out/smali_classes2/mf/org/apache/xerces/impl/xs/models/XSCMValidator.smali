.class public interface abstract Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
.super Ljava/lang/Object;
.source "XSCMValidator.java"


# static fields
.field public static final FIRST_ERROR:S = -0x1s

.field public static final SUBSEQUENT_ERROR:S = -0x2s


# virtual methods
.method public abstract checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation
.end method

.method public abstract endContentModel([I)Z
.end method

.method public abstract getTermName(I)Ljava/lang/String;
.end method

.method public abstract isCompactedForUPA()Z
.end method

.method public abstract occurenceInfo([I)[I
.end method

.method public abstract oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
.end method

.method public abstract startContentModel()[I
.end method

.method public abstract whatCanGoHere([I)Ljava/util/Vector;
.end method

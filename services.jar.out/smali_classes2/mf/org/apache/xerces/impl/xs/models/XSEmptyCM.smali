.class public Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;
.super Ljava/lang/Object;
.source "XSEmptyCM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# static fields
.field private static final EMPTY:Ljava/util/Vector;

.field private static final STATE_START:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;->EMPTY:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public endContentModel([I)Z
    .locals 2

    const/4 v1, 0x0

    aget v0, p1, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public occurenceInfo([I)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    aget v0, p2, v1

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    aput v0, p2, v1

    return-object v2

    :cond_0
    const/4 v0, -0x2

    aput v0, p2, v1

    return-object v2
.end method

.method public startContentModel()[I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;->EMPTY:Ljava/util/Vector;

    return-object v0
.end method

.class Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/XMLAttributesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Attribute"
.end annotation


# instance fields
.field public augs:Lmf/org/apache/xerces/xni/Augmentations;

.field public final name:Lmf/org/apache/xerces/xni/QName;

.field public next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field public nonNormalizedValue:Ljava/lang/String;

.field public specified:Z

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

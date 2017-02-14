.class public Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# static fields
.field public static final ATTRIBUTE:S = 0x2s

.field public static final CHILD:S = 0x1s

.field public static final DESCENDANT:S = 0x4s

.field public static final SELF:S = 0x3s


# instance fields
.field public final type:S


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "???"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "child"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "attribute"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "self"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "descendant"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

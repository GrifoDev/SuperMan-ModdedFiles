.class public final Landroid/support/v17/leanback/widget/ParallaxTarget$DirectPropertyTarget;
.super Landroid/support/v17/leanback/widget/ParallaxTarget;
.source "ParallaxTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectPropertyTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Number;",
        ">",
        "Landroid/support/v17/leanback/widget/ParallaxTarget;"
    }
.end annotation


# instance fields
.field mObject:Ljava/lang/Object;

.field mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<TT;TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public directUpdate(Ljava/lang/Number;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$DirectPropertyTarget;->mProperty:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$DirectPropertyTarget;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isDirectMapping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

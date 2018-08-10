.class public Lcom/samsung/systemui/splugins/SPluginDependency;
.super Ljava/lang/Object;
.source "SPluginDependency.java"


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginDependency$SDependencyProvider;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1

.field public static sProvider:Lcom/samsung/systemui/splugins/SPluginDependency$SDependencyProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/systemui/splugins/SPluginDependency;->sProvider:Lcom/samsung/systemui/splugins/SPluginDependency$SDependencyProvider;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/systemui/splugins/SPluginDependency$SDependencyProvider;->get(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

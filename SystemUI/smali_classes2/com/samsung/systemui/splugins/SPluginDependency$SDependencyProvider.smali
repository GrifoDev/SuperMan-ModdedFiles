.class public abstract Lcom/samsung/systemui/splugins/SPluginDependency$SDependencyProvider;
.super Ljava/lang/Object;
.source "SPluginDependency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginDependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SDependencyProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

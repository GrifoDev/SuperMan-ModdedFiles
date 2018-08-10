.class public Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic;
.super Ljava/lang/Object;
.source "PluginRecentsStatic.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager;,
        Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$MultiWindowManager;,
        Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$SemMultiWindowManager;,
        Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$SemWindowManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

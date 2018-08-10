.class public interface abstract Lcom/samsung/systemui/splugins/navillera/PluginNavillera;
.super Ljava/lang/Object;
.source "PluginNavillera.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_NAVILLERA"
    version = 0x3e9
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_NAVILLERA"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x3e9


# virtual methods
.method public abstract getPluginNavigationBarColor()I
.end method

.method public onStart(Lcom/samsung/systemui/splugins/navillera/PluginNavilleraManager;)V
    .locals 0

    return-void
.end method

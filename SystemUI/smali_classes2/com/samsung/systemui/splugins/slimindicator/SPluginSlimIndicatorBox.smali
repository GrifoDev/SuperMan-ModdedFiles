.class public interface abstract Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;
.super Ljava/lang/Object;
.source "SPluginSlimIndicatorBox.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"
    version = 0x3eb
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

.field public static final BLACK_LIST_DB:Ljava/lang/String; = ""

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x3

.field public static final VERSION:I = 0x3eb

.field public static final mModel:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;


# virtual methods
.method public abstract getBlackListDB()Ljava/lang/String;
.end method

.method public abstract getBoxCallback()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;
.end method

.method public abstract getModel()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;
.end method

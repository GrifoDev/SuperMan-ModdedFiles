.class public interface abstract Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;
.super Ljava/lang/Object;
.source "PluginQSColoring.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.coloring.PLUGIN_QSCOLORING"
    version = 0x3e8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.coloring.PLUGIN_QSCOLORING"

.field public static final COLORING_BACKGROUND:I = 0x0

.field public static final COLORING_BRIGHTNESS_BAR_ACTIVATED:I = 0x5

.field public static final COLORING_BRIGHTNESS_BAR_BACKGROUND:I = 0x6

.field public static final COLORING_QSTILE_ICON_OFF:I = 0x3

.field public static final COLORING_QSTILE_ICON_ON_DIM:I = 0x2

.field public static final COLORING_QSTILE_LABEL:I = 0x1

.field public static final COLORING_QS_HEADER_ICON:I = 0x4

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x0

.field public static final VERSION:I = 0x3e8


# virtual methods
.method public abstract getQSColoringBlurEffectAmount()F
.end method

.method public abstract getQSColoringColor(I)I
.end method

.method public abstract getQSColoringDimEffectAmount()F
.end method

.method public abstract isQSColoringBlurEffectEnabled()Z
.end method

.method public abstract isQSColoringDimEffectEnabled()Z
.end method

.method public abstract isQSColoringEnabled()Z
.end method

.method public abstract isUserPreferOpenTheme()Z
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V
.end method

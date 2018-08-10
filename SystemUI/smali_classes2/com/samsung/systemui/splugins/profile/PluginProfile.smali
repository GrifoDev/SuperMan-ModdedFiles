.class public interface abstract Lcom/samsung/systemui/splugins/profile/PluginProfile;
.super Ljava/lang/Object;
.source "PluginProfile.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_PROFILE"
    version = 0x3e9
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_PROFILE"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x3e9


# virtual methods
.method public abstract addSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V
.end method

.method public abstract getStateString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public releaseProfile()V
    .locals 0

    return-void
.end method

.method public abstract removeSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V
.end method

.method public abstract sendStateString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.class public abstract Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;
.super Ljava/lang/Object;
.source "PluginEventBusHelper.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# static fields
.field protected static sPluginEventBusHelper:Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;->sPluginEventBusHelper:Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;

    return-object v0
.end method


# virtual methods
.method public abstract sendFocusNextTaskViewEvent(ZI)V
.end method

.method public abstract sendFocusPreviousTaskViewEvent(Z)V
.end method

.method public abstract sendLaunchTaskEvent(ZLcom/samsung/systemui/splugins/recents/views/PluginTaskView;Lcom/samsung/systemui/splugins/recents/model/PluginTask;Landroid/graphics/Rect;IZ)V
.end method

.method public abstract sendRecentsViewModeChangedEvent(ZZZ)V
.end method

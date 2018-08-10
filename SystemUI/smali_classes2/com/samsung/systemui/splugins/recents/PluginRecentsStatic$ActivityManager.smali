.class public Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager;
.super Ljava/lang/Object;
.source "PluginRecentsStatic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager$StackId;
    }
.end annotation


# static fields
.field public static DOCKED_STACK_CREATE_MODE_TOP_OR_LEFT:I

.field public static RECENT_IGNORE_HOME_AND_RECENTS_STACK_TASKS:I

.field public static RECENT_INCLUDE_PROFILES:I

.field public static RECENT_INGORE_DOCKED_STACK_TOP_TASK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

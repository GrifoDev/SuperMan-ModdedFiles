.class interface abstract Lcom/android/launcher2/AvailableWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableWidgetListProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableWidgetListProvider$Util;
    }
.end annotation


# static fields
.field public static final DEBUGGABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    return-void
.end method


# virtual methods
.method public abstract getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;
.end method

.method public abstract getAvailableWidgets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isShortcutWidget(Ljava/lang/String;)Z
.end method

.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;
.super Ljava/lang/Object;
.source "DeskPanelWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field focusable:Z

.field position:I

.field remoteInputActive:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x100003

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;->position:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager$State;-><init>()V

    return-void
.end method
